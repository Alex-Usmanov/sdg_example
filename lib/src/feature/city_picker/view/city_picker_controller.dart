import 'package:flutter/foundation.dart';

import '../data/api/city_picker_api.dart';
import 'city_picker_state.dart';

class CityPickerController extends ValueNotifier<CityPickerState> {
  final CityPickerApi _api;

  CityPickerController({required CityPickerApi api})
    : _api = api,
      super(CityPickerState.initialLoading()) {
    loadCities();
  }

  Future<void> loadCities() async {
    try {
      final countriesResponse = await _api.getCountries();
      value = CityPickerState.countriesLoaded(countriesResponse.countries);
    } catch (e) {
      value = CityPickerState.countriesError(e);
    }
  }

  Future<void> setSelectedCountry(String countryId) async {
    if (value is! CityPickerStateCountriesLoaded &&
        value is! CityPickerStateStatesLoaded) {
      return;
    }

    final country = (value as CityPickerStateCountriesLoaded).countries
        .firstWhere((country) => country.id == countryId);

    final countries = (value as CityPickerStateCountriesLoaded).countries;
    value = CityPickerState.statesLoading(countries, country);

    try {
      final statesResponse = await _api.getStates(countryId);
      value = CityPickerState.statesLoaded(countries, statesResponse.states);
    } catch (e) {
      value = CityPickerState.statesError(e);
    }
  }

  Future<void> setSelectedState(String stateId) async {
    if (value is! CityPickerStateStatesLoaded) {
      return;
    }

    final state = (value as CityPickerStateStatesLoaded).states.firstWhere(
      (state) => state.id == stateId,
    );

    value = (value as CityPickerStateStatesLoaded).copyWith(
      selectedState: state,
    );
  }
}
