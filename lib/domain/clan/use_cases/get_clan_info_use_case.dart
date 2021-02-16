import 'package:clashroyalestats/domain/clan/models/clan.dart';
import 'package:clashroyalestats/domain/clan/repositories/clan_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetClanInfoUseCase {
  final ClanRepository _repository;

  const GetClanInfoUseCase(this._repository);

  Future<Clan> call(String clanTag) => _repository.fetchClanInfo(clanTag);
}
