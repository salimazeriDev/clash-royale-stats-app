import 'package:clashroyalestats/domain/clan/models/clan.dart';
import 'package:clashroyalestats/domain/clan/repositories/clan_repository.dart';
import 'package:clashroyalestats/infrastructure/clan/data_sources/clan_data_source.dart';
import 'package:clashroyalestats/infrastructure/clan/mappers/clan_dto_mapper.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: ClanRepository)
class ClanRepositoryImpl implements ClanRepository {
  final ClanDataSource _dataSource;
  final ClanDtoMapper _mapper;

  const ClanRepositoryImpl(this._dataSource, this._mapper);

  @override
  Future<Clan> fetchClanInfo(String clanTag) async {
    final _clanDto =
        await _dataSource.fetchClanInfo(Uri.encodeComponent(clanTag));
    return _mapper.apply(_clanDto);
  }
}
