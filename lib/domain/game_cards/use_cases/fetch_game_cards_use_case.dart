import 'package:clashroyalestats/domain/game_cards/repositories/game_cards_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class FetchGameCardsUseCase {
  final GameCardsRepository _repository;

  const FetchGameCardsUseCase(this._repository);

  Future<void> call() => _repository.fetch();
}
