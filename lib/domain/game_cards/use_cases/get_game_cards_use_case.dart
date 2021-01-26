import 'package:clashroyalestats/domain/game_cards/models/game_card.dart';
import 'package:clashroyalestats/domain/game_cards/repositories/game_cards_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetGameCardsUseCase {
  final GameCardsRepository _repository;

  const GetGameCardsUseCase(this._repository);

  Future<List<GameCard>> call() => _repository.cards;
}
