import 'package:clashroyalestats/domain/game_cards/models/game_card.dart';
import 'package:clashroyalestats/domain/mapper/data_mapper.dart';
import 'package:clashroyalestats/infrastructure/game_cards/dtos/game_card_dto.dart';
import 'package:injectable/injectable.dart';

@injectable
class GameCardDtoMapper extends DataMapper<GameCardDto, GameCard> {
  @override
  GameCard apply(GameCardDto data) {
    return GameCard(
      id: data.id,
      name: data.name,
      maxLevel: data.maxLevel,
      iconUrls: _applyIconUrls(data),
    );
  }

  List<String> _applyIconUrls(GameCardDto data) {
    final _iconUrls = <String>[];
    _iconUrls.add(data.iconUrls?.medium);
    return _iconUrls;
  }
}
