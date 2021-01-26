import 'package:clashroyalestats/infrastructure/game_cards/dtos/icon_urls_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_card_dto.freezed.dart';
part 'game_card_dto.g.dart';

@freezed
abstract class GameCardDto with _$GameCardDto {
  factory GameCardDto({
    int id,
    String name,
    int maxLevel,
    IconUrlsDto iconUrls,
  }) = _GameCardDto;

  factory GameCardDto.fromJson(Map<String, dynamic> json) =>
      _$GameCardDtoFromJson(json);
}
