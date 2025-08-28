import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sdg_example/src/feature/state_picker/data/interface/state_source.dart';
import 'package:sdg_example/src/feature/state_picker/data/model/state/state.dart';
import 'package:sdg_example/src/feature/state_picker/view/state_dropdown/state_dropdown.dart';

import '../../common/make_widget_testable.dart';

class _FakeStateSource implements StateSource {
  final Future<List<StateModel>> Function(String countryId) callback;

  _FakeStateSource({required this.callback});

  @override
  Future<List<StateModel>> getStates(String countryId) => callback(countryId);
}

void main() {
  testWidgets('is loading at start', (tester) async {
    await tester.pumpWidget(
      makeWidgetTestable(
        StateDropdown(
          countryId: 'test-country',
          controller: StateDropdownController(
            citySource: _FakeStateSource(
              callback: (countryId) async {
                await Future.delayed(const Duration(seconds: 8));
                return [];
              },
            ),
          ),
          onStateSelected: (state) {},
        ),
      ),
    );

    expect(
      find.byType(CircularProgressIndicator),
      findsOneWidget,
      reason:
          'When created, there is no data, hence loading indicator should be shown',
    );

    tester.pump(const Duration(seconds: 11));
  });

  testWidgets('shows data', (tester) async {
    final controller = StateDropdownController(
      citySource: _FakeStateSource(
        callback: (countryId) async {
          return [
            StateModel(id: '1', name: 'California'),
            StateModel(id: '2', name: 'Texas'),
          ];
        },
      ),
    );

    await tester.pumpWidget(
      makeWidgetTestable(
        StateDropdown(
          countryId: 'test-country',
          controller: controller,
          onStateSelected: (state) {},
        ),
      ),
    );

    controller.loadCountries('test-country');
    await tester.pumpAndSettle();

    await tester.tap(find.text("Select a state..."), warnIfMissed: false);
    await tester.pumpAndSettle();

    expect(
      find.text("California"),
      findsWidgets,
      reason: "California state should be visible in dropdown options",
    );
    expect(
      find.text("Texas"),
      findsWidgets,
      reason: "Texas state should be visible in dropdown options",
    );
  });

  testWidgets('shows error', (tester) async {
    final controller = StateDropdownController(
      citySource: _FakeStateSource(
        callback: (countryId) async {
          throw Exception("Test error");
        },
      ),
    );

    await tester.pumpWidget(
      makeWidgetTestable(
        StateDropdown(
          countryId: 'test-country',
          controller: controller,
          onStateSelected: (state) {},
        ),
      ),
    );

    // Trigger loading states which will cause error
    controller.loadCountries('test-country');
    await tester.pump(const Duration(seconds: 11));

    expect(
      find.text("Try again"),
      findsOne,
      reason: "Error happened, hence retry button should be shown",
    );
  });

  testWidgets('can retry and succeed', (tester) async {
    var retryCount = 0;

    final controller = StateDropdownController(
      citySource: _FakeStateSource(
        callback: (countryId) async {
          retryCount++;

          if (retryCount == 1) {
            throw Exception("Test error");
          }

          return [
            StateModel(id: '1', name: 'California'),
            StateModel(id: '2', name: 'Texas'),
          ];
        },
      ),
    );

    await tester.pumpWidget(
      makeWidgetTestable(
        StateDropdown(
          countryId: 'test-country',
          controller: controller,
          onStateSelected: (state) {},
        ),
      ),
    );

    controller.loadCountries('test-country');
    await tester.pump(const Duration(seconds: 1));

    expect(
      find.text("Try again"),
      findsOne,
      reason: "Error happened, hence retry button should be shown",
    );

    await tester.tap(find.text("Try again"));
    await tester.pump(const Duration(seconds: 1));

    expect(
      find.text("Try again"),
      findsNothing,
      reason: "After successful retry, error button should be hidden",
    );

    await tester.tap(find.text("Select a state..."), warnIfMissed: false);
    await tester.pumpAndSettle();

    expect(
      find.text("California"),
      findsWidgets,
      reason: "After retry, California state should be visible in dropdown",
    );
    expect(
      find.text("Texas"),
      findsWidgets,
      reason: "After retry, Texas state should be visible in dropdown",
    );
  });

  testWidgets('can select state', (tester) async {
    StateModel? selectedState;
    final controller = StateDropdownController(
      citySource: _FakeStateSource(
        callback: (countryId) async {
          return [
            StateModel(id: '1', name: 'California'),
            StateModel(id: '2', name: 'Texas'),
          ];
        },
      ),
    );

    await tester.pumpWidget(
      makeWidgetTestable(
        StateDropdown(
          countryId: 'test-country',
          controller: controller,
          onStateSelected: (state) {
            selectedState = state;
          },
        ),
      ),
    );

    controller.loadCountries('test-country');
    await tester.pumpAndSettle();

    await tester.tap(find.text("Select a state..."), warnIfMissed: false);
    await tester.pumpAndSettle();

    await tester.tap(find.text("California").last);
    await tester.pumpAndSettle();

    expect(
      selectedState,
      isNotNull,
      reason: "State should be selected when tapping dropdown option",
    );
    expect(
      selectedState?.id,
      "1",
      reason: "Selected state should have correct ID (California)",
    );
  });

  testWidgets('loads states for correct country id', (tester) async {
    String? receivedCountryId;
    final controller = StateDropdownController(
      citySource: _FakeStateSource(
        callback: (countryId) async {
          receivedCountryId = countryId;
          return [StateModel(id: '1', name: 'California')];
        },
      ),
    );

    await tester.pumpWidget(
      makeWidgetTestable(
        StateDropdown(
          countryId: 'specific-country-123',
          controller: controller,
          onStateSelected: (state) {},
        ),
      ),
    );

    controller.loadCountries('specific-country-123');
    await tester.pumpAndSettle();

    expect(
      receivedCountryId,
      equals('specific-country-123'),
      reason:
          "StateSource should receive the correct country ID when loading states",
    );
  });
}
