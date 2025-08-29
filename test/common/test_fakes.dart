import 'package:sdg_example/src/feature/state_picker/data/interface/country_source.dart';
import 'package:sdg_example/src/feature/state_picker/data/interface/state_source.dart';
import 'package:sdg_example/src/feature/state_picker/data/model/country/country.dart';
import 'package:sdg_example/src/feature/state_picker/data/model/state/state.dart';

class FakeCountrySource implements CountrySource {
  final Future<List<CountryModel>> Function() callback;

  FakeCountrySource({required this.callback});

  @override
  Future<List<CountryModel>> getCountries() => callback();
}

class FakeStateSource implements StateSource {
  final Future<List<StateModel>> Function(String countryId) callback;

  FakeStateSource({required this.callback});

  @override
  Future<List<StateModel>> getStates(String countryId) => callback(countryId);
}
