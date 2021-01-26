import 'package:freezed_annotation/freezed_annotation.dart';

part 'badge.freezed.dart';

@freezed
abstract class Badge with _$Badge {
  factory Badge({
    String name,
    int progress,
    int level,
    int maxLevel,
    int target,
  }) = _Badge;
}
