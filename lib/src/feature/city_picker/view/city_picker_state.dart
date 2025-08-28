import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/model/country.dart';
import '../data/model/state.dart';

part 'city_picker_state.freezed.dart';

@freezed
sealed class CityPickerState with _$CityPickerState {
  factory CityPickerState.initialLoading() = CityPickerStateInitial;
  factory CityPickerState.countriesLoaded(List<Country> countries) =
      CityPickerStateCountriesLoaded;

  factory CityPickerState.countriesError(Object error) =
      CityPickerStateCountriesError;

  factory CityPickerState.statesLoading(
    List<Country> countries,
    Country country,
  ) = CityPickerStateStatesLoading;

  factory CityPickerState.statesError(Object error) =
      CityPickerStateStatesError;

  factory CityPickerState.statesLoaded(
    List<Country> countries,
    List<State> states, {
    State? selectedState,
  }) = CityPickerStateStatesLoaded;
}
