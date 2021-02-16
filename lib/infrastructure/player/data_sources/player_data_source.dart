import 'package:clashroyalestats/infrastructure/network/network_configuration.dart';
import 'package:clashroyalestats/infrastructure/player/dtos/player_dto.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';

part 'player_data_source.g.dart';

@RestApi()
@injectable
abstract class PlayerDataSource {
  @factoryMethod
  factory PlayerDataSource(Dio dio) = _PlayerDataSource;

  @GET(NetworkConfiguration.player)
  Future<PlayerDto> fetch(@Path() String playerTag);
}
