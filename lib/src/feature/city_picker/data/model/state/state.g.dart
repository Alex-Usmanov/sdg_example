// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StateModel _$StateModelFromJson(Map<String, dynamic> json) =>
    _StateModel(name: json['value'] as String, id: json['id'] as String);

Map<String, dynamic> _$StateModelToJson(_StateModel instance) =>
    <String, dynamic>{'value': instance.name, 'id': instance.id};

_StateResponse _$StateResponseFromJson(Map<String, dynamic> json) =>
    _StateResponse(
      (json['states'] as List<dynamic>)
          .map((e) => StateModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$StateResponseToJson(_StateResponse instance) =>
    <String, dynamic>{'states': instance.states};
