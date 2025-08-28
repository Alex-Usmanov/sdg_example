import 'package:flutter/material.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/api/city_picker_api.dart';
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
  final CountrySource _citySource;

  CountryDropdownController({required CountrySource citySource})
    : _citySource = citySource,
      super(CountryDropdownState.loading()) {
    loadCountries();
  }

  Future<void> loadCountries() async {
    try {
      final countries = await _citySource.getCountries();
      value = CountryDropdownState.data(countries);
    } catch (e) {
      value = CountryDropdownState.error(e);
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
              onPressed: () => controller.loadCountries(),
              label: Text("Try again"),
              icon: Icon(Icons.warning),
            );
          case CountryDropdownStateData():
            return DropdownMenu<CountryModel>(
              hintText: "Select a country...",
              onSelected: (country) => onCountrySelected(country),
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
