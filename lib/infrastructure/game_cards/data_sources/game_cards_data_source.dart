import 'package:clashroyalestats/infrastructure/game_cards/dtos/game_cards_response_dto.dart';
import 'package:clashroyalestats/infrastructure/network/network_configuration.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';

part 'game_cards_data_source.g.dart';

@RestApi()
@injectable
abstract class GameCardsDataSource {
  @factoryMethod
  factory GameCardsDataSource(Dio dio) = _GameCardsDataSource;

  @GET(NetworkConfiguration.cards)
  Future<GameCardsResponseDto> fetch();
}
