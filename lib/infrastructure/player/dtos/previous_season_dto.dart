import 'package:freezed_annotation/freezed_annotation.dart';

part 'previous_season_dto.freezed.dart';
part 'previous_season_dto.g.dart';

@freezed
abstract class PreviousSeasonDto with _$PreviousSeasonDto {
  factory PreviousSeasonDto({
    String id,
    int trophies,
    int bestTrophies,
  }) = _PreviousSeasonDto;

  factory PreviousSeasonDto.fromJson(Map<String, dynamic> json) =>
      _$PreviousSeasonDtoFromJson(json);
}
