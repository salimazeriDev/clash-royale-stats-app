import 'package:clashroyalestats/domain/clan/models/location.dart';
import 'package:clashroyalestats/domain/mapper/data_mapper.dart';
import 'package:clashroyalestats/infrastructure/clan/dtos/location_dto.dart';
import 'package:injectable/injectable.dart';

@injectable
class LocationDtoMapper extends DataMapper<LocationDto, Location> {
  @override
  Location apply(LocationDto data) {
    return Location(
      id: data.id,
      name: data.name,
      isCountry: data.isCountry,
      countryCode: data.countryCode,
    );
  }
}
