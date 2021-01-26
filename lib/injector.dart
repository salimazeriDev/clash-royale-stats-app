import 'package:clashroyalestats/infrastructure/network/network_configuration.dart';
import 'package:clashroyalestats/infrastructure/network/token_inceptor.dart';
import 'package:clashroyalestats/injector.config.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

const apiBaseUrl = 'baseUrl';
const _dirs = ['lib', 'bin', 'test'];

final GetIt getIt = GetIt.instance;

@InjectableInit(generateForDir: _dirs)
void configureInjection(String env) => $initGetIt(getIt, environment: env);

@module
abstract class RegisterModule {
  String get _baseUrl => getIt.get<String>(instanceName: apiBaseUrl);

  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  @Named(apiBaseUrl)
  String get baseUrl => NetworkConfiguration.baseUrl;

  @lazySingleton
  Dio dio() {
    return Dio(
      BaseOptions(baseUrl: _baseUrl),
    )..interceptors.addAll([
        _logInterceptor,
        _tokenInceptor,
      ]);
  }

  final TokenInceptor _tokenInceptor = TokenInceptor();
  final LogInterceptor _logInterceptor = LogInterceptor(
    requestBody: true,
    responseBody: true,
  );
}
