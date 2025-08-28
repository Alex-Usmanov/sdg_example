import 'package:freezed_annotation/freezed_annotation.dart';

part 'country.freezed.dart';
part 'country.g.dart';

@freezed
abstract class CountryModel with _$CountryModel {
  factory CountryModel({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'value') required String name,
  }) = _CountryModel;

  factory CountryModel.fromJson(Map<String, dynamic> json) =>
      _$CountryModelFromJson(json);
}

@freezed
abstract class CountryResponse with _$CountryResponse {
  factory CountryResponse(List<CountryModel> countries) = _CountryResponse;

  factory CountryResponse.fromJson(List<dynamic> json) =>
      CountryResponse(json.map((e) => CountryModel.fromJson(e)).toList());
}
