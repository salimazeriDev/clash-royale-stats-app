import 'package:clashroyalestats/infrastructure/game_cards/dtos/game_card_dto.dart';
import 'package:clashroyalestats/infrastructure/player/dtos/achievement_dto.dart';
import 'package:clashroyalestats/infrastructure/player/dtos/arena_dto.dart';
import 'package:clashroyalestats/infrastructure/player/dtos/badge_dto.dart';
import 'package:clashroyalestats/infrastructure/player/dtos/clan_info_dto.dart';
import 'package:clashroyalestats/infrastructure/player/dtos/league_statistics_dto.dart';
import 'package:clashroyalestats/infrastructure/player/dtos/player_card_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_dto.freezed.dart';
part 'player_dto.g.dart';

@freezed
abstract class PlayerDto with _$PlayerDto {
  factory PlayerDto({
    String tag,
    String name,
    int expLevel,
    int trophies,
    int bestTrophies,
    int wins,
    int losses,
    int battleCount,
    int threeCrownWins,
    int challengeCardsWon,
    int challengeMaxWins,
    int tournamentCardsWon,
    int tournamentBattleCount,
    String role,
    int donations,
    int donationsReceived,
    int totalDonations,
    int warDayWins,
    int clanCardsCollected,
    ClanInfoDto clan,
    ArenaDto arena,
    LeagueStatisticsDto leagueStatistics,
    List<BadgeDto> badges,
    List<AchievementDto> achievements,
    List<PlayerCardDto> cards,
    List<PlayerCardDto> currentDeck,
    GameCardDto currentFavouriteCard,
  }) = _PlayerDto;

  factory PlayerDto.fromJson(Map<String, dynamic> json) =>
      _$PlayerDtoFromJson(json);
}
