import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/country.dart';
import '../model/state.dart';

class CityPickerApi {
  Future<CountryResponse> getCountries() async {
    final response = await http.get(
      Uri.parse('https://68a2b00ac5a31eb7bb1d7ad2.mockapi.io/api/v1/countries'),
    );

    final json = jsonDecode(response.body);

    return CountryResponse.fromJson(json);
  }

  Future<StateResponse> getStates(String countryId) async {
    final response = await http.get(
      Uri.parse(
        'https://68a2b00ac5a31eb7bb1d7ad2.mockapi.io/api/v1/countries/$countryId/states',
      ),
    );

    final json = jsonDecode(response.body);

    return StateResponse.fromJson(json);
  }
}
