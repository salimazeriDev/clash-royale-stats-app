import 'package:freezed_annotation/freezed_annotation.dart';

part 'arena_dto.freezed.dart';
part 'arena_dto.g.dart';

@freezed
abstract class ArenaDto with _$ArenaDto {
  factory ArenaDto({
    int id,
    String name,
  }) = _ArenaDto;

  factory ArenaDto.fromJson(Map<String, dynamic> json) =>
      _$ArenaDtoFromJson(json);
}
