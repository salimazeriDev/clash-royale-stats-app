import 'package:clashroyalestats/domain/game_cards/models/game_card.dart';
import 'package:clashroyalestats/domain/game_cards/repositories/game_cards_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetGameCardUseCase {
  final GameCardsRepository _repository;

  const GetGameCardUseCase(this._repository);

  Future<GameCard> invoke(int id) => _repository.card(id);
}
