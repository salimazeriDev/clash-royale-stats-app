import 'package:clashroyalestats/domain/game_cards/models/game_card.dart';
import 'package:clashroyalestats/domain/player/models/achievement.dart';
import 'package:clashroyalestats/domain/player/models/arena.dart';
import 'package:clashroyalestats/domain/player/models/badge.dart';
import 'package:clashroyalestats/domain/player/models/clan_info.dart';
import 'package:clashroyalestats/domain/player/models/league_statistics.dart';
import 'package:clashroyalestats/domain/player/models/player_card.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'player.freezed.dart';

@freezed
abstract class Player with _$Player {
  factory Player({
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
    ClanInfo clan,
    Arena arena,
    LeagueStatistics leagueStatistics,
    List<Badge> badges,
    List<Achievement> achievements,
    List<PlayerCard> cards,
    List<PlayerCard> currentDeck,
    GameCard currentFavouriteCard,
  }) = _Player;
}
