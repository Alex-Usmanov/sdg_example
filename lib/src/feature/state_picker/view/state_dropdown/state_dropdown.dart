import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/analytics.dart';
import '../../data/interface/state_source.dart';
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
      Analytics.logEvent('state_dropdown/loading');
      value = StateDropdownState.loading();
      final stopwatch = Stopwatch()..start();
      final states = await _citySource
          .getStates(countryId)
          .timeout(
            const Duration(seconds: 10),
          ); // timeout could be in remote config for example. also retries could be made

      stopwatch.stop();
      value = StateDropdownState.data(states);
      Analytics.logEvent(
        'state_dropdown/loaded',
        parameters: {'time_to_load_s': stopwatch.elapsed.inSeconds.toString()},
      );
    } on HttpException catch (error) {
      value = StateDropdownState.error(error);
    } on TimeoutException catch (error, stackTrace) {
      value = StateDropdownState.error(error);
      Analytics.logEvent("state_dropdown/timeout");
      Analytics.reportError(error, stackTrace);
    } catch (error, stackTrace) {
      value = StateDropdownState.error(error);
      Analytics.reportError(error, stackTrace);
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
              onPressed: () {
                Analytics.logEvent('state_dropdown/retry');
                controller.loadCountries(countryId);
              },
              label: Text("Try again"),
              icon: Icon(Icons.warning),
            );
          case StateDropdownStateData():
            return DropdownMenu<StateModel>(
              hintText: "Select a state...",
              onSelected: (stateModel) {
                Analytics.logEvent(
                  'state_dropdown/state_selected',
                  parameters: {'state_id': stateModel?.id ?? ''},
                );
                onStateSelected(stateModel);
              },
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
