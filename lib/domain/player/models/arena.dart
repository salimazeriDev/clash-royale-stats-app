import 'package:freezed_annotation/freezed_annotation.dart';

part 'arena.freezed.dart';

@freezed
abstract class Arena with _$Arena {
  factory Arena({
    int id,
    String name,
  }) = _Arena;
}
