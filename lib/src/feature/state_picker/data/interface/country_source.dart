import '../model/country/country.dart';

abstract interface class CountrySource {
  Future<List<CountryModel>> getCountries();
}
