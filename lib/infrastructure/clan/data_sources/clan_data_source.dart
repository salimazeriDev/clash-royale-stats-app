import 'package:clashroyalestats/infrastructure/clan/dtos/clan_dto.dart';
import 'package:clashroyalestats/infrastructure/network/network_configuration.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';

part 'clan_data_source.g.dart';

@RestApi()
@injectable
abstract class ClanDataSource {
  @factoryMethod
  factory ClanDataSource(Dio dio) = _ClanDataSource;

  @GET(NetworkConfiguration.clanInfo)
  Future<ClanDto> fetchClanInfo(@Path() String clanTag);
}
