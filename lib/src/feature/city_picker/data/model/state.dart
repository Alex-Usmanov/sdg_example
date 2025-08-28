import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';
part 'state.g.dart';

@freezed
abstract class State with _$State {
  factory State({
    @JsonKey(name: 'value') required String name,
    @JsonKey(name: 'id') required String id,
  }) = _State;

  factory State.fromJson(Map<String, dynamic> json) => _$StateFromJson(json);
}

@freezed
abstract class StateResponse with _$StateResponse {
  factory StateResponse(List<State> states) = _StateResponse;

  factory StateResponse.fromJson(List<dynamic> json) =>
      StateResponse(json.map((e) => State.fromJson(e)).toList());
}
