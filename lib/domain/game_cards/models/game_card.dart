import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_card.freezed.dart';

@freezed
abstract class GameCard with _$GameCard {
  factory GameCard({
    int id,
    String name,
    int maxLevel,
    List<String> iconUrls,
  }) = _GameCard;
}
