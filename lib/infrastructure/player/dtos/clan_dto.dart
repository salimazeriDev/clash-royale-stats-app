import 'package:freezed_annotation/freezed_annotation.dart';

part 'clan_dto.freezed.dart';
part 'clan_dto.g.dart';

@freezed
abstract class ClanDto with _$ClanDto {
  factory ClanDto({
    String tag,
    String name,
    int badgeId,
  }) = _ClanDto;

  factory ClanDto.fromJson(Map<String, dynamic> json) =>
      _$ClanDtoFromJson(json);
}
