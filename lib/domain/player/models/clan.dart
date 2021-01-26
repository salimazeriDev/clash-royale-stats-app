import 'package:freezed_annotation/freezed_annotation.dart';

part 'clan.freezed.dart';

@freezed
abstract class Clan with _$Clan {
  factory Clan({
    String tag,
    String name,
    int badgeId,
  }) = _Clan;
}
