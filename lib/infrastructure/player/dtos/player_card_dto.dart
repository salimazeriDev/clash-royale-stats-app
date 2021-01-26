import 'package:clashroyalestats/infrastructure/game_cards/dtos/icon_urls_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_card_dto.freezed.dart';
part 'player_card_dto.g.dart';

@freezed
abstract class PlayerCardDto with _$PlayerCardDto {
  factory PlayerCardDto({
    int id,
    String name,
    int level,
    int maxLevel,
    int count,
    IconUrlsDto iconUrls,
  }) = _PlayerCardDto;

  factory PlayerCardDto.fromJson(Map<String, dynamic> json) =>
      _$PlayerCardDtoFromJson(json);
}
