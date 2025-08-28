// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_State _$StateFromJson(Map<String, dynamic> json) =>
    _State(name: json['value'] as String, id: json['id'] as String);

Map<String, dynamic> _$StateToJson(_State instance) => <String, dynamic>{
  'value': instance.name,
  'id': instance.id,
};

_StateResponse _$StateResponseFromJson(Map<String, dynamic> json) =>
    _StateResponse(
      (json['states'] as List<dynamic>)
          .map((e) => State.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$StateResponseToJson(_StateResponse instance) =>
    <String, dynamic>{'states': instance.states};
