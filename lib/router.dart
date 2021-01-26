import 'package:auto_route/auto_route_annotations.dart';
import 'package:clashroyalestats/presentation/loading/loading_page.dart';
import 'package:clashroyalestats/presentation/main_page/main_page.dart';

@AdaptiveAutoRouter(
  generateNavigationHelperExtension: true,
  routes: <AutoRoute>[
    AdaptiveRoute(page: LoadingPage, initial: true),
    AdaptiveRoute(page: MainPage),
  ],
)
class $Router {}
