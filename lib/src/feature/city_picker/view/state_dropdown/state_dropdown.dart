import 'package:flutter/material.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/api/city_picker_api.dart';
import '../../data/model/state/state.dart';

part 'state_dropdown.freezed.dart';

@freezed
sealed class StateDropdownState with _$StateDropdownState {
  factory StateDropdownState.loading() = StateDropdownStateLoading;
  factory StateDropdownState.error(Object error) = StateDropdownStateError;
  factory StateDropdownState.data(List<StateModel> states) =
      StateDropdownStateData;
}

class StateDropdownController extends ValueNotifier<StateDropdownState> {
  final StateSource _citySource;

  StateDropdownController({required StateSource citySource})
    : _citySource = citySource,
      super(StateDropdownState.loading());

  Future<void> loadCountries(String countryId) async {
    try {
      value = StateDropdownState.loading();
      final states = await _citySource.getStates(countryId);
      value = StateDropdownState.data(states);
    } catch (e) {
      value = StateDropdownState.error(e);
    }
  }
}

class StateDropdown extends StatelessWidget {
  const StateDropdown({
    super.key,
    required this.controller,
    required this.onStateSelected,
    required this.countryId,
  });

  final StateDropdownController controller;
  final ValueChanged<StateModel?> onStateSelected;
  final String countryId;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: controller,
      builder: (context, state, _) {
        switch (state) {
          case StateDropdownStateLoading():
            return Center(child: CircularProgressIndicator());
          case StateDropdownStateError():
            return TextButton.icon(
              onPressed: () => controller.loadCountries(countryId),
              label: Text("Try again"),
              icon: Icon(Icons.warning),
            );
          case StateDropdownStateData():
            return DropdownMenu<StateModel>(
              hintText: "Select a state...",
              onSelected: (stateModel) => onStateSelected(stateModel),
              dropdownMenuEntries: state.states
                  .map(
                    (state) =>
                        DropdownMenuEntry(value: state, label: state.name),
                  )
                  .toList(),
            );
        }
      },
    );
  }
}
