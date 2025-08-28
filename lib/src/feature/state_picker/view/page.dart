import 'package:flutter/material.dart';
import 'package:sdg_example/src/feature/state_picker/view/country_dropdown/country_dropdown.dart';
import 'package:sdg_example/src/feature/state_picker/view/state_dropdown/state_dropdown.dart';

import '../data/api/city_picker_api.dart';

class CityPickerPage extends StatefulWidget {
  const CityPickerPage({super.key});

  @override
  State<CityPickerPage> createState() => _CityPickerPageState();
}

class _CityPickerPageState extends State<CityPickerPage> {
  String? _selectedCountryId;
  late final CountryDropdownController _countryPickerController;
  late final StateDropdownController _statePickerController;

  @override
  void initState() {
    super.initState();

    final api = CityPickerApi();

    _countryPickerController = CountryDropdownController(citySource: api);
    _statePickerController = StateDropdownController(citySource: api);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('City Picker')),
      body: Column(
        children: [
          Center(
            child: CountryDropdown(
              controller: _countryPickerController,
              onCountrySelected: (country) {
                if (country == null) {
                  return;
                }

                setState(() {
                  _selectedCountryId = country.id;
                });

                _statePickerController.loadCountries(_selectedCountryId!);
              },
            ),
          ),
          const SizedBox(height: 32.0),
          if (_selectedCountryId != null)
            Center(
              child: StateDropdown(
                countryId: _selectedCountryId!,
                controller: _statePickerController,
                onStateSelected: (state) {
                  if (state == null) {
                    return;
                  }

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Tadaa! You selected ${state.name}'),
                    ),
                  );
                },
              ),
            ),
        ],
      ),
    );
  }
}
