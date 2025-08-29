import 'package:flutter_test/flutter_test.dart';
import 'package:sdg_example/src/feature/state_picker/data/model/country/country.dart';
import 'package:sdg_example/src/feature/state_picker/data/model/state/state.dart';
import 'package:sdg_example/src/feature/state_picker/view/page.dart';
import 'package:sdg_example/src/feature/state_picker/view/country_dropdown/country_dropdown.dart';
import 'package:sdg_example/src/feature/state_picker/view/state_dropdown/state_dropdown.dart';

import '../../common/make_widget_testable.dart';
import '../../common/test_fakes.dart';

void main() {
  testWidgets(
    'can select country and state - complete happy path with country changes',
    (tester) async {
      final Map<String, List<StateModel>> statesByCountry = {
        '1': [
          StateModel(id: 'us1', name: 'California'),
          StateModel(id: 'us2', name: 'Texas'),
        ],
        '2': [
          StateModel(id: 'ca1', name: 'Ontario'),
          StateModel(id: 'ca2', name: 'Quebec'),
        ],
      };

      final fakeCountrySource = FakeCountrySource(
        callback: () async {
          return [
            CountryModel(id: '1', name: 'USA'),
            CountryModel(id: '2', name: 'Canada'),
          ];
        },
      );

      final fakeStateSource = FakeStateSource(
        callback: (countryId) async {
          return statesByCountry[countryId] ?? [];
        },
      );

      await tester.pumpWidget(
        makeWidgetTestable(
          CityPickerPage(
            countrySource: fakeCountrySource,
            stateSource: fakeStateSource,
          ),
        ),
      );

      await tester.pumpAndSettle();

      expect(
        find.byType(CountryDropdown),
        findsOneWidget,
        reason: 'Country dropdown menu should be available after loading',
      );

      await tester.tap(find.text('Select a country...'), warnIfMissed: false);
      await tester.pumpAndSettle();

      await tester.tap(find.text('USA').last);
      await tester.pumpAndSettle();

      expect(
        find.byType(StateDropdown),
        findsOneWidget,
        reason: 'State dropdown should appear after selecting a country',
      );

      await tester.tap(find.text('Select a state...'), warnIfMissed: false);
      await tester.pumpAndSettle();

      expect(
        find.text('California'),
        findsWidgets,
        reason: 'California should be visible when USA is selected',
      );
      expect(
        find.text('Texas'),
        findsWidgets,
        reason: 'Texas should be visible when USA is selected',
      );

      await tester.tap(find.text('California').last);
      await tester.pumpAndSettle();

      expect(
        find.text('Tadaa! You selected California'),
        findsOneWidget,
        reason: 'Success snackbar should appear after selecting California',
      );

      await tester.pump(const Duration(seconds: 5));

      await tester.tap(find.text('Select a country...'), warnIfMissed: false);
      await tester.pumpAndSettle();

      await tester.tap(find.text('Canada').last);
      await tester.pumpAndSettle();

      await tester.tap(find.text('Select a state...'), warnIfMissed: false);
      await tester.pumpAndSettle();

      expect(
        find.text('Ontario'),
        findsWidgets,
        reason: 'Ontario should be visible when Canada is selected',
      );
      expect(
        find.text('Quebec'),
        findsWidgets,
        reason: 'Quebec should be visible when Canada is selected',
      );

      await tester.tap(find.text('Quebec').last);
      await tester.pumpAndSettle();

      expect(
        find.text('Tadaa! You selected Quebec'),
        findsOneWidget,
        reason: 'Success snackbar should appear after selecting Quebec',
      );
    },
  );
}
