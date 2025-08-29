import 'package:flutter/material.dart';
import 'package:sdg_example/src/feature/state_picker/view/country_dropdown/country_dropdown.dart';
import 'package:sdg_example/src/feature/state_picker/view/state_dropdown/state_dropdown.dart';

import '../data/interface/country_source.dart';
import '../data/interface/state_source.dart';

class CityPickerPage extends StatefulWidget {
  final CountrySource countrySource;
  final StateSource stateSource;

  const CityPickerPage({
    super.key,
    required this.countrySource,
    required this.stateSource,
  });

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

    final countrySource = widget.countrySource;
    final stateSource = widget.stateSource;

    _countryPickerController = CountryDropdownController(
      citySource: countrySource,
    );
    _statePickerController = StateDropdownController(citySource: stateSource);
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
