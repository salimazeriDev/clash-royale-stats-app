import 'package:clashroyalestats/domain/mapper/data_mapper.dart';
import 'package:clashroyalestats/domain/player/models/player_card.dart';
import 'package:clashroyalestats/infrastructure/player/dtos/player_card_dto.dart';
import 'package:injectable/injectable.dart';

@injectable
class PlayerCardDtoMapper extends DataMapper<PlayerCardDto, PlayerCard> {
  @override
  PlayerCard apply(PlayerCardDto data) {
    return PlayerCard(
      id: data.id,
      name: data.name,
      level: data.level,
      maxLevel: data.maxLevel,
      count: data.count,
      iconUrls: _applyIconUrls(data),
    );
  }

  List<String> _applyIconUrls(PlayerCardDto data) {
    final _iconUrls = <String>[];
    _iconUrls.add(data.iconUrls?.medium);
    return _iconUrls;
  }
}
