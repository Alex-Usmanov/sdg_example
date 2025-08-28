import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/country/country.dart';
import '../model/state/state.dart';

abstract interface class CountrySource {
  Future<List<CountryModel>> getCountries();
}

abstract interface class StateSource {
  Future<List<StateModel>> getStates(String countryId);
}

class CityPickerApi implements CountrySource, StateSource {
  @override
  Future<List<CountryModel>> getCountries() async {
    final response = await http.get(
      Uri.parse('https://68a2b00ac5a31eb7bb1d7ad2.mockapi.io/api/v1/countries'),
    );

    final json = jsonDecode(response.body);

    final parsedResponse = CountryResponse.fromJson(json);

    return parsedResponse.countries;
  }

  @override
  Future<List<StateModel>> getStates(String countryId) async {
    final response = await http.get(
      Uri.parse(
        'https://68a2b00ac5a31eb7bb1d7ad2.mockapi.io/api/v1/countries/$countryId/states',
      ),
    );

    final json = jsonDecode(response.body);

    final parsedResponse = StateResponse.fromJson(json);
    return parsedResponse.states;
  }
}
