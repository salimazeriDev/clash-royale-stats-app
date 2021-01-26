import 'package:freezed_annotation/freezed_annotation.dart';

part 'achievement.freezed.dart';

@freezed
abstract class Achievement with _$Achievement {
  factory Achievement({
    String name,
    int stars,
    int value,
    int target,
    String info,
    String completionInfo,
  }) = _Achievement;
}
