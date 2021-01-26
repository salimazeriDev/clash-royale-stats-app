import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_card.freezed.dart';

@freezed
abstract class PlayerCard with _$PlayerCard {
  factory PlayerCard({
    int id,
    String name,
    int level,
    int maxLevel,
    int count,
    List<String> iconUrls,
  }) = _PlayerCard;
}
