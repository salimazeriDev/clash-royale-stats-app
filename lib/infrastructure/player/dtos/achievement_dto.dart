import 'package:freezed_annotation/freezed_annotation.dart';

part 'achievement_dto.freezed.dart';
part 'achievement_dto.g.dart';

@freezed
abstract class AchievementDto with _$AchievementDto {
  factory AchievementDto({
    String name,
    int stars,
    int value,
    int target,
    String info,
    String completionInfo,
  }) = _AchievementDto;

  factory AchievementDto.fromJson(Map<String, dynamic> json) =>
      _$AchievementDtoFromJson(json);
}
