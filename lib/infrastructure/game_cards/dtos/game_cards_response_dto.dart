import 'package:clashroyalestats/infrastructure/game_cards/dtos/game_card_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_cards_response_dto.g.dart';

@JsonSerializable()
class GameCardsResponseDto {
  final List<GameCardDto> items;

  GameCardsResponseDto(
    this.items,
  );

  factory GameCardsResponseDto.fromJson(Map<String, dynamic> json) =>
      _$GameCardsResponseDtoFromJson(json);
}
