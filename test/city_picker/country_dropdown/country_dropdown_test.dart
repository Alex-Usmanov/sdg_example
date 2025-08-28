import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sdg_example/src/feature/state_picker/data/interface/country_source.dart';
import 'package:sdg_example/src/feature/state_picker/data/model/country/country.dart';
import 'package:sdg_example/src/feature/state_picker/view/country_dropdown/country_dropdown.dart';

import '../../common/make_widget_testable.dart';

class _FakeCountrySource implements CountrySource {
  final Future<List<CountryModel>> Function() callback;

  _FakeCountrySource({required this.callback});

  @override
  Future<List<CountryModel>> getCountries() => callback();
}

void main() {
  testWidgets('is loading at start', (tester) async {
    await tester.pumpWidget(
      makeWidgetTestable(
        CountryDropdown(
          controller: CountryDropdownController(
            citySource: _FakeCountrySource(
              callback: () async {
                await Future.delayed(const Duration(seconds: 8));
                return [];
              },
            ),
          ),
          onCountrySelected: (country) {},
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
    await tester.pumpWidget(
      makeWidgetTestable(
        CountryDropdown(
          controller: CountryDropdownController(
            citySource: _FakeCountrySource(
              callback: () async {
                return [
                  CountryModel(id: '1', name: 'Russia'),
                  CountryModel(id: '2', name: 'USA'),
                ];
              },
            ),
          ),
          onCountrySelected: (country) {},
        ),
      ),
    );

    // Wait for data to load
    await tester.pumpAndSettle();

    await tester.tap(find.text("Select a country..."), warnIfMissed: false);
    await tester.pumpAndSettle();

    expect(
      find.text("Russia"),
      findsWidgets,
      reason: "Russia country should be visible in dropdown options",
    );
    expect(
      find.text("USA"),
      findsWidgets,
      reason: "USA country should be visible in dropdown options",
    );
  });

  testWidgets('shows error', (tester) async {
    await tester.pumpWidget(
      makeWidgetTestable(
        CountryDropdown(
          controller: CountryDropdownController(
            citySource: _FakeCountrySource(
              callback: () async {
                throw Exception("Test error");
              },
            ),
          ),
          onCountrySelected: (country) {},
        ),
      ),
    );

    await tester.pump(const Duration(seconds: 11));

    expect(
      find.text("Try again"),
      findsOne,
      reason: "Error happened, hence retry button should be shown",
    );
  });

  testWidgets('can retry and succeed', (tester) async {
    var retryCount = 0;

    await tester.pumpWidget(
      makeWidgetTestable(
        CountryDropdown(
          controller: CountryDropdownController(
            citySource: _FakeCountrySource(
              callback: () async {
                retryCount++;

                if (retryCount == 1) {
                  throw Exception("Test error");
                }

                return [
                  CountryModel(id: '1', name: 'Russia'),
                  CountryModel(id: '2', name: 'USA'),
                ];
              },
            ),
          ),
          onCountrySelected: (country) {},
        ),
      ),
    );

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

    await tester.tap(find.text("Select a country..."), warnIfMissed: false);
    await tester.pumpAndSettle();

    expect(
      find.text("Russia"),
      findsWidgets,
      reason: "After retry, Russia country should be visible in dropdown",
    );
    expect(
      find.text("USA"),
      findsWidgets,
      reason: "After retry, USA country should be visible in dropdown",
    );
  });

  testWidgets('can select country', (tester) async {
    CountryModel? selectedCountry;
    await tester.pumpWidget(
      makeWidgetTestable(
        CountryDropdown(
          controller: CountryDropdownController(
            citySource: _FakeCountrySource(
              callback: () async {
                return [
                  CountryModel(id: '1', name: 'Russia'),
                  CountryModel(id: '2', name: 'USA'),
                ];
              },
            ),
          ),
          onCountrySelected: (country) {
            selectedCountry = country;
          },
        ),
      ),
    );

    // Wait for data to load
    await tester.pumpAndSettle();

    // Find and tap the dropdown menu text field to open it
    await tester.tap(find.text("Select a country..."), warnIfMissed: false);
    await tester.pumpAndSettle();

    // Now tap on the specific country option
    await tester.tap(find.text("Russia").last);
    await tester.pumpAndSettle();

    expect(
      selectedCountry,
      isNotNull,
      reason: "Country should be selected when tapping dropdown option",
    );
    expect(
      selectedCountry?.id,
      "1",
      reason: "Selected country should have correct ID (Russia)",
    );
  });
}
