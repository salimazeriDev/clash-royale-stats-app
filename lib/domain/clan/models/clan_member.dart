import 'package:clashroyalestats/domain/player/models/arena.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'clan_member.freezed.dart';

@freezed
abstract class ClanMember with _$ClanMember {
  factory ClanMember({
    String tag,
    String name,
    String role,
    String lastSeen,
    int expLevel,
    int trophies,
    Arena arena,
    int clanRank,
    int previousClanRank,
    int donations,
    int donationsReceived,
    int clanChestPoints,
  }) = _ClanMember;
}
