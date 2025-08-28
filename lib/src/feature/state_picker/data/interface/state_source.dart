import '../model/state/state.dart';

abstract interface class StateSource {
  Future<List<StateModel>> getStates(String countryId);
}
