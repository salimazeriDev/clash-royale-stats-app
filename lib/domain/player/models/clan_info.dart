import 'package:freezed_annotation/freezed_annotation.dart';

part 'clan_info.freezed.dart';

@freezed
abstract class ClanInfo with _$ClanInfo {
  factory ClanInfo({
    String tag,
    String name,
    int badgeId,
  }) = _ClanInfo;
}
