import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/analytics.dart';
import '../../data/interface/country_source.dart';
import '../../data/model/country/country.dart';

part 'country_dropdown.freezed.dart';

@freezed
sealed class CountryDropdownState with _$CountryDropdownState {
  factory CountryDropdownState.loading() = CountryDropdownStateLoading;
  factory CountryDropdownState.error(Object error) = CountryDropdownStateError;
  factory CountryDropdownState.data(List<CountryModel> countries) =
      CountryDropdownStateData;
}

class CountryDropdownController extends ValueNotifier<CountryDropdownState> {
  final CountrySource _countrySource;

  CountryDropdownController({required CountrySource citySource})
    : _countrySource = citySource,
      super(CountryDropdownState.loading()) {
    loadCountries();
  }

  Future<void> loadCountries() async {
    try {
      Analytics.logEvent('country_dropdown/loading');
      value = CountryDropdownState.loading();
      final stopwatch = Stopwatch()..start();
      final countries = await _countrySource.getCountries().timeout(
        const Duration(seconds: 10),
      ); // timeout could be in remote config for example. also retries could be made

      stopwatch.stop();
      value = CountryDropdownState.data(countries);
      Analytics.logEvent(
        'country_dropdown/loaded',
        parameters: {'time_to_load_s': stopwatch.elapsed.inSeconds.toString()},
      );
    } on HttpException catch (error) {
      value = CountryDropdownState.error(error);
    } on TimeoutException catch (error, stackTrace) {
      value = CountryDropdownState.error(error);
      Analytics.logEvent("country_dropdown/timeout");
      Analytics.reportError(error, stackTrace);
    } catch (error, stackTrace) {
      value = CountryDropdownState.error(error);
      Analytics.reportError(error, stackTrace);
    }
  }
}

class CountryDropdown extends StatelessWidget {
  const CountryDropdown({
    super.key,
    required this.controller,
    required this.onCountrySelected,
  });

  final CountryDropdownController controller;
  final ValueChanged<CountryModel?> onCountrySelected;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: controller,
      builder: (context, state, _) {
        switch (state) {
          case CountryDropdownStateLoading():
            return Center(child: CircularProgressIndicator());
          case CountryDropdownStateError():
            return TextButton.icon(
              onPressed: () {
                Analytics.logEvent('country_dropdown/retry');
                controller.loadCountries();
              },
              label: Text("Try again"),
              icon: Icon(Icons.warning),
            );
          case CountryDropdownStateData():
            return DropdownMenu<CountryModel>(
              hintText: "Select a country...",
              onSelected: (countryModel) {
                Analytics.logEvent(
                  'country_dropdown/country_selected',
                  parameters: {'country_id': countryModel?.id ?? ''},
                );
                onCountrySelected(countryModel);
              },
              dropdownMenuEntries: state.countries
                  .map(
                    (country) =>
                        DropdownMenuEntry(value: country, label: country.name),
                  )
                  .toList(),
            );
        }
      },
    );
  }
}
