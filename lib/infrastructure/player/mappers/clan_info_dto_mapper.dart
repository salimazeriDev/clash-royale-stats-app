import 'package:clashroyalestats/domain/mapper/data_mapper.dart';
import 'package:clashroyalestats/domain/player/models/clan_info.dart';
import 'package:clashroyalestats/infrastructure/player/dtos/clan_info_dto.dart';

import 'package:injectable/injectable.dart';

@injectable
class ClanInfoDtoMapper extends DataMapper<ClanInfoDto, ClanInfo> {
  @override
  ClanInfo apply(ClanInfoDto data) {
    return ClanInfo(
      tag: data.tag,
      name: data.name,
      badgeId: data.badgeId,
    );
  }
}
