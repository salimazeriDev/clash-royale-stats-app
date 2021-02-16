import 'package:clashroyalestats/domain/clan/models/clan.dart';

abstract class ClanRepository {
  Future<Clan> fetchClanInfo(String clanTag);
}
