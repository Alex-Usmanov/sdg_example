import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:sdg_example/src/feature/state_picker/data/interface/country_source.dart';

import '../interface/state_source.dart';
import '../model/country/country.dart';
import '../model/state/state.dart';

class CityPickerApi implements CountrySource, StateSource {
  @override
  Future<List<CountryModel>> getCountries() async {
    // obviosly you would use an api client with a set base urls interceptors etc, but for our purposes it's fine
    final response = await http.get(
      Uri.parse('https://68a2b00ac5a31eb7bb1d7ad2.mockapi.io/api/v1/countries'),
    );

    final json = jsonDecode(response.body);

    final parsedResponse = CountryResponse.fromJson(json);

    return parsedResponse.countries;
  }

  @override
  Future<List<StateModel>> getStates(String countryId) async {
    // obviosly you would use an api client with a set base urls interceptors etc, but for our purposes it's fine
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
