import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';
part 'state.g.dart';

// 'model' suffix mostly to prevent name clashing with ui layer (state - statefulwidget etc)
@freezed
abstract class StateModel with _$StateModel {
  factory StateModel({
    @JsonKey(name: 'value') required String name,
    @JsonKey(name: 'id') required String id,
  }) = _StateModel;

  factory StateModel.fromJson(Map<String, dynamic> json) =>
      _$StateModelFromJson(json);
}

@freezed
abstract class StateResponse with _$StateResponse {
  factory StateResponse(List<StateModel> states) = _StateResponse;

  factory StateResponse.fromJson(List<dynamic> json) =>
      StateResponse(json.map((e) => StateModel.fromJson(e)).toList());
}
