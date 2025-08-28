import 'package:freezed_annotation/freezed_annotation.dart';

part 'country.freezed.dart';
part 'country.g.dart';

@freezed
abstract class Country with _$Country {
  factory Country({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'value') required String name,
  }) = _Country;

  factory Country.fromJson(Map<String, dynamic> json) =>
      _$CountryFromJson(json);
}

@freezed
abstract class CountryResponse with _$CountryResponse {
  factory CountryResponse(List<Country> countries) = _CountryResponse;

  factory CountryResponse.fromJson(List<dynamic> json) =>
      CountryResponse(json.map((e) => Country.fromJson(e)).toList());
}
