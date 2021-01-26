import 'package:clashroyalestats/domain/game_cards/models/game_card.dart';
import 'package:clashroyalestats/domain/game_cards/repositories/game_cards_repository.dart';
import 'package:clashroyalestats/infrastructure/game_cards/data_sources/game_cards_data_source.dart';
import 'package:clashroyalestats/infrastructure/game_cards/mappers/game_card_dto_mapper.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: GameCardsRepository)
class GameCardsRepositoryImpl extends GameCardsRepository {
  final GameCardsDataSource _dataSource;
  final GameCardDtoMapper _mapper;

  GameCardsRepositoryImpl(this._dataSource, this._mapper);

  List<GameCard> _cards;

  @override
  Future<List<GameCard>> get cards async {
    if (_cards == null) {
      await fetch();
    }
    return _cards;
  }

  @override
  Future<GameCard> card(int id) async {
    if (_cards == null) {
      await fetch();
    }
    return _cards.firstWhere((card) => card.id == id, orElse: () => null);
  }

  @override
  Future<void> fetch() async {
    final _cardsResponseDto = await _dataSource.fetch();
    final _cardsList = _cardsResponseDto.items.map(_mapper.apply).toList();
    // final _cardsList = _cardsResponseDto.map(_mapper.apply).toList();
    _cards = _cardsList;
  }
}
