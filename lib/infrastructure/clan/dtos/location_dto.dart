import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_dto.freezed.dart';
part 'location_dto.g.dart';

@freezed
abstract class LocationDto with _$LocationDto {
  factory LocationDto({
    int id,
    String name,
    bool isCountry,
    String countryCode,
  }) = _LocationDto;

  factory LocationDto.fromJson(Map<String, dynamic> json) =>
      _$LocationDtoFromJson(json);
}
