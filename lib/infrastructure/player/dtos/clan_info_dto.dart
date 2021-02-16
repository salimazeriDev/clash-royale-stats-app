import 'package:freezed_annotation/freezed_annotation.dart';

part 'clan_info_dto.freezed.dart';
part 'clan_info_dto.g.dart';

@freezed
abstract class ClanInfoDto with _$ClanInfoDto {
  factory ClanInfoDto({
    String tag,
    String name,
    int badgeId,
  }) = _ClanInfoDto;

  factory ClanInfoDto.fromJson(Map<String, dynamic> json) =>
      _$ClanInfoDtoFromJson(json);
}
