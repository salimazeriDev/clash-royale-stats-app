import 'package:clashroyalestats/infrastructure/clan/dtos/clan_member_dto.dart';
import 'package:clashroyalestats/infrastructure/clan/dtos/location_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'clan_dto.freezed.dart';
part 'clan_dto.g.dart';

@freezed
abstract class ClanDto with _$ClanDto {
  factory ClanDto({
    String tag,
    String name,
    String type,
    String description,
    int badgeId,
    int clanScore,
    int clanWarTrophies,
    LocationDto location,
    int requiredTrophies,
    int donationsPerWeek,
    String clanChestStatus,
    int clanChestLevel,
    int clanChestMaxLevel,
    int members,
    List<ClanMemberDto> memberList,
  }) = _ClanDto;

  factory ClanDto.fromJson(Map<String, dynamic> json) =>
      _$ClanDtoFromJson(json);
}
