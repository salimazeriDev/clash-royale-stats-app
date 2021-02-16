import 'package:clashroyalestats/domain/clan/models/clan_member.dart';
import 'package:clashroyalestats/domain/clan/models/location.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'clan.freezed.dart';

@freezed
abstract class Clan with _$Clan {
  factory Clan({
    String tag,
    String name,
    String type,
    String description,
    int badgeId,
    int clanScore,
    int clanWarTrophies,
    Location location,
    int requiredTrophies,
    int donationsPerWeek,
    String clanChestStatus,
    int clanChestLevel,
    int clanChestMaxLevel,
    int members,
    List<ClanMember> memberList,
  }) = _Clan;
}
