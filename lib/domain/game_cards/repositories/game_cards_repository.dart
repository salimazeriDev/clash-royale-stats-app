import 'package:clashroyalestats/domain/game_cards/models/game_card.dart';

abstract class GameCardsRepository {
  Future<List<GameCard>> get cards;
  Future<GameCard> card(int id);
  Future<void> fetch();
}
