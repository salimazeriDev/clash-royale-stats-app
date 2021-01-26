import 'package:clashroyalestats/domain/mapper/data_mapper.dart';
import 'package:clashroyalestats/domain/player/models/badge.dart';
import 'package:clashroyalestats/infrastructure/player/dtos/badge_dto.dart';
import 'package:injectable/injectable.dart';

@injectable
class BadgeDtoMapper extends DataMapper<BadgeDto, Badge> {
  @override
  Badge apply(BadgeDto data) {
    return Badge(
      name: data.name,
      progress: data.progress,
    );
  }
}
