// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Country _$CountryFromJson(Map<String, dynamic> json) =>
    _Country(id: json['id'] as String, name: json['value'] as String);

Map<String, dynamic> _$CountryToJson(_Country instance) => <String, dynamic>{
  'id': instance.id,
  'value': instance.name,
};

_CountryResponse _$CountryResponseFromJson(Map<String, dynamic> json) =>
    _CountryResponse(
      (json['countries'] as List<dynamic>)
          .map((e) => Country.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CountryResponseToJson(_CountryResponse instance) =>
    <String, dynamic>{'countries': instance.countries};
