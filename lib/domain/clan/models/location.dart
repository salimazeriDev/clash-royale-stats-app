import 'package:freezed_annotation/freezed_annotation.dart';

part 'location.freezed.dart';

@freezed
abstract class Location with _$Location {
  factory Location({
    int id,
    String name,
    bool isCountry,
    String countryCode,
  }) = _Location;
}
