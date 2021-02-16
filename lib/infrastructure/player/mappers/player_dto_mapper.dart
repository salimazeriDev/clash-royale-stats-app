import 'package:clashroyalestats/domain/mapper/data_mapper.dart';
import 'package:clashroyalestats/domain/player/models/achievement.dart';
import 'package:clashroyalestats/domain/player/models/badge.dart';
import 'package:clashroyalestats/domain/player/models/player.dart';
import 'package:clashroyalestats/domain/player/models/player_card.dart';
import 'package:clashroyalestats/infrastructure/game_cards/mappers/game_card_dto_mapper.dart';
import 'package:clashroyalestats/infrastructure/player/dtos/player_card_dto.dart';
import 'package:clashroyalestats/infrastructure/player/dtos/player_dto.dart';
import 'package:clashroyalestats/infrastructure/player/mappers/achievement_dto_mapper.dart';
import 'package:clashroyalestats/infrastructure/player/mappers/arena_dto_mapper.dart';
import 'package:clashroyalestats/infrastructure/player/mappers/badge_dto_mapper.dart';
import 'package:clashroyalestats/infrastructure/player/mappers/clan_info_dto_mapper.dart';
import 'package:clashroyalestats/infrastructure/player/mappers/league_statistics_dto_mapper.dart';
import 'package:clashroyalestats/infrastructure/player/mappers/player_card_dto_mapper.dart';
import 'package:injectable/injectable.dart';

@injectable
class PlayerDtoMapper extends DataMapper<PlayerDto, Player> {
  final ClanInfoDtoMapper _clanInfoDtoMapper;
  final ArenaDtoMapper _arenaDtoMapper;
  final LeagueStatisticsDtoMapper _leagueStatisticsDtoMapper;
  final BadgeDtoMapper _badgeDtoMapper;
  final AchievementDtoMapper _achievementDtoMapper;
  final PlayerCardDtoMapper _playerCardDtoMapper;
  final GameCardDtoMapper _gameCardDtoMapper;

  PlayerDtoMapper(
    this._clanInfoDtoMapper,
    this._arenaDtoMapper,
    this._leagueStatisticsDtoMapper,
    this._badgeDtoMapper,
    this._achievementDtoMapper,
    this._playerCardDtoMapper,
    this._gameCardDtoMapper,
  );

  @override
  Player apply(PlayerDto data) {
    return Player(
      tag: data.tag,
      name: data.name,
      expLevel: data.expLevel,
      trophies: data.trophies,
      bestTrophies: data.bestTrophies,
      wins: data.wins,
      losses: data.losses,
      battleCount: data.battleCount,
      threeCrownWins: data.threeCrownWins,
      challengeCardsWon: data.challengeCardsWon,
      challengeMaxWins: data.challengeMaxWins,
      tournamentCardsWon: data.tournamentCardsWon,
      tournamentBattleCount: data.tournamentBattleCount,
      role: data.role,
      donations: data.donations,
      donationsReceived: data.donationsReceived,
      totalDonations: data.totalDonations,
      warDayWins: data.warDayWins,
      clanCardsCollected: data.clanCardsCollected,
      clan: _clanInfoDtoMapper.apply(data.clan),
      arena: _arenaDtoMapper.apply(data.arena),
      leagueStatistics: _leagueStatisticsDtoMapper.apply(data.leagueStatistics),
      badges: _applyBadges(data),
      achievements: _applyAchievements(data),
      cards: _applyCards(data.cards),
      currentDeck: _applyCards(data.currentDeck),
      currentFavouriteCard: _gameCardDtoMapper.apply(data.currentFavouriteCard),
    );
  }

  List<Badge> _applyBadges(PlayerDto data) {
    return data.badges
        .map((badgeDto) => _badgeDtoMapper.apply(badgeDto))
        .toList();
  }

  List<Achievement> _applyAchievements(PlayerDto data) {
    return data.achievements
        .map((achievementDto) => _achievementDtoMapper.apply(achievementDto))
        .toList();
  }

  List<PlayerCard> _applyCards(List<PlayerCardDto> cards) {
    return cards
        .map((playerCardDto) => _playerCardDtoMapper.apply(playerCardDto))
        .toList();
  }
}
