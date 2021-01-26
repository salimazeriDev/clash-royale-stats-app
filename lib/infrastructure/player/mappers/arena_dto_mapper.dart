import 'package:clashroyalestats/domain/mapper/data_mapper.dart';
import 'package:clashroyalestats/domain/player/models/arena.dart';
import 'package:clashroyalestats/infrastructure/player/dtos/arena_dto.dart';
import 'package:injectable/injectable.dart';

@injectable
class ArenaDtoMapper extends DataMapper<ArenaDto, Arena> {
  @override
  Arena apply(ArenaDto data) {
    return Arena(
      id: data.id,
      name: data.name,
    );
  }
}
