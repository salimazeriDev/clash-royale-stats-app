import 'package:clashroyalestats/domain/player/models/player.dart';
import 'package:clashroyalestats/domain/player/repositories/player_repository.dart';
import 'package:clashroyalestats/infrastructure/player/data_sources/player_data_source.dart';
import 'package:clashroyalestats/infrastructure/player/mappers/player_dto_mapper.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: PlayerRepository)
class PlayerReopsitoryImpl extends PlayerRepository {
  final PlayerDataSource _dataSource;
  final PlayerDtoMapper _mapper;

  PlayerReopsitoryImpl(this._dataSource, this._mapper);

  @override
  Future<Player> fetch(String playerTag) async {
    final _playerDto = await _dataSource.fetch(Uri.encodeComponent(playerTag));
    final _player = _mapper.apply(_playerDto);
    return _player;
  }
}
