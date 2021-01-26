import 'package:freezed_annotation/freezed_annotation.dart';

part 'best_season_dto.freezed.dart';
part 'best_season_dto.g.dart';

@freezed
abstract class BestSeasonDto with _$BestSeasonDto {
  factory BestSeasonDto({
    String id,
    int trophies,
  }) = _BestSeasonDto;

  factory BestSeasonDto.fromJson(Map<String, dynamic> json) =>
      _$BestSeasonDtoFromJson(json);
}
