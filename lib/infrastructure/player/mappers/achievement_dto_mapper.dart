import 'package:clashroyalestats/domain/mapper/data_mapper.dart';
import 'package:clashroyalestats/domain/player/models/achievement.dart';
import 'package:clashroyalestats/infrastructure/player/dtos/achievement_dto.dart';
import 'package:injectable/injectable.dart';

@injectable
class AchievementDtoMapper extends DataMapper<AchievementDto, Achievement> {
  @override
  Achievement apply(AchievementDto data) {
    return Achievement(
      name: data.name,
      stars: data.stars,
      value: data.value,
      target: data.target,
      info: data.info,
      completionInfo: data.completionInfo,
    );
  }
}
