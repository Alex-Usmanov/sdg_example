import 'package:flutter/material.dart';
import 'package:sdg_example/src/feature/city_picker/data/model/country.dart';
import 'package:sdg_example/src/feature/city_picker/data/model/state.dart'
    as geo_state;

import '../data/api/city_picker_api.dart';
import 'city_picker_controller.dart';
import 'city_picker_state.dart';

class CityPickerPage extends StatefulWidget {
  const CityPickerPage({super.key});

  @override
  State<CityPickerPage> createState() => _CityPickerPageState();
}

class _CityPickerPageState extends State<CityPickerPage> {
  late CityPickerController _controller;

  @override
  void initState() {
    _controller = CityPickerController(api: CityPickerApi());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('City Picker')),
      body: ValueListenableBuilder(
        valueListenable: _controller,
        builder: (context, value, child) {
          switch (value) {
            case CityPickerStateInitial():
              return const Center(child: CircularProgressIndicator());
            case CityPickerStateCountriesLoaded():
              return _CityPickerContent(
                countries: value.countries,
                controller: _controller,
                states: [],
              );
            case CityPickerStateCountriesError():
              return Center(child: Text(value.error.toString()));
            case CityPickerStateStatesLoading():
              return _CityPickerContent(
                countries: value.countries,
                controller: _controller,
                states: [],
              );
            case CityPickerStateStatesLoaded():
              return _CityPickerContent(
                countries: value.countries,
                controller: _controller,
                states: value.states,
              );
            case CityPickerStateStatesError():
              return Center(child: Text('Error loading states'));
          }
        },
      ),
    );
  }
}

class _CityPickerContent extends StatelessWidget {
  final List<Country> countries;
  final List<geo_state.State> states;
  final CityPickerController controller;

  const _CityPickerContent({
    super.key,
    required this.countries,
    required this.states,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownMenu(
          onSelected: (countryId) {
            if (countryId == null) {
              return;
            }

            controller.setSelectedCountry(countryId);
          },
          dropdownMenuEntries: [
            for (var country in countries)
              DropdownMenuEntry(value: country.id, label: country.name),
          ],
        ),
        if (states.isNotEmpty)
          DropdownMenu(
            onSelected: (cityId) {
              if (cityId == null) {
                return;
              }

              controller.setSelectedState(cityId);
            },
            dropdownMenuEntries: [
              for (var geoState in states)
                DropdownMenuEntry(value: geoState.id, label: geoState.name),
            ],
          ),
      ],
    );
  }
}
