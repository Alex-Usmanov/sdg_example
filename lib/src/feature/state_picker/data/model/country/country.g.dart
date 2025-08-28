// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CountryModel _$CountryModelFromJson(Map<String, dynamic> json) =>
    _CountryModel(id: json['id'] as String, name: json['value'] as String);

Map<String, dynamic> _$CountryModelToJson(_CountryModel instance) =>
    <String, dynamic>{'id': instance.id, 'value': instance.name};

_CountryResponse _$CountryResponseFromJson(Map<String, dynamic> json) =>
    _CountryResponse(
      (json['countries'] as List<dynamic>)
          .map((e) => CountryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CountryResponseToJson(_CountryResponse instance) =>
    <String, dynamic>{'countries': instance.countries};
