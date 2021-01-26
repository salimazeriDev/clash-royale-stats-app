import 'package:freezed_annotation/freezed_annotation.dart';

part 'current_season_dto.freezed.dart';
part 'current_season_dto.g.dart';

@freezed
abstract class CurrentSeasonDto with _$CurrentSeasonDto {
  factory CurrentSeasonDto({
    int trophies,
    int bestTrophies,
  }) = _CurrentSeasonDto;

  factory CurrentSeasonDto.fromJson(Map<String, dynamic> json) =>
      _$CurrentSeasonDtoFromJson(json);
}
