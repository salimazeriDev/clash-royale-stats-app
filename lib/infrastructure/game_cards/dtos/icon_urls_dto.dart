import 'package:freezed_annotation/freezed_annotation.dart';

part 'icon_urls_dto.freezed.dart';
part 'icon_urls_dto.g.dart';

@freezed
abstract class IconUrlsDto with _$IconUrlsDto {
  factory IconUrlsDto({
    String medium,
  }) = _IconUrlsDto;

  factory IconUrlsDto.fromJson(Map<String, dynamic> json) =>
      _$IconUrlsDtoFromJson(json);
}
