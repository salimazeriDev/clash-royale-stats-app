import 'package:clashroyalestats/domain/player/models/player.dart';

abstract class PlayerRepository {
  Future<Player> fetch(String playerTag);
}
