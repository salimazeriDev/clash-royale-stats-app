import 'package:clashroyalestats/domain/player/models/player.dart';
import 'package:clashroyalestats/domain/player/repositories/player_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetPlayerUseCase {
  final PlayerRepository _repository;

  GetPlayerUseCase(this._repository);

  Future<Player> call(String playerTag) => _repository.fetch(playerTag);
}
