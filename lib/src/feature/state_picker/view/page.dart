import 'package:flutter/material.dart';
import 'package:sdg_example/src/feature/state_picker/view/country_dropdown/country_dropdown.dart';
import 'package:sdg_example/src/feature/state_picker/view/state_dropdown/state_dropdown.dart';

import '../data/api/city_picker_api.dart';
import '../data/interface/country_source.dart';
import '../data/interface/state_source.dart';

class CityPickerPage extends StatefulWidget {
  final CountrySource? countrySource;
  final StateSource? stateSource;

  const CityPickerPage({super.key, this.countrySource, this.stateSource});

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

    // in real app this would generally be managed via some di framework
    final api = CityPickerApi();
    final countrySource = widget.countrySource ?? api;
    final stateSource = widget.stateSource ?? api;

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
