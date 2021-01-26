import 'package:freezed_annotation/freezed_annotation.dart';

part 'badge_dto.freezed.dart';
part 'badge_dto.g.dart';

@freezed
abstract class BadgeDto with _$BadgeDto {
  factory BadgeDto({
    String name,
    int progress,
    int level,
    int maxLevel,
    int target,
  }) = _BadgeDto;

  factory BadgeDto.fromJson(Map<String, dynamic> json) =>
      _$BadgeDtoFromJson(json);
}
