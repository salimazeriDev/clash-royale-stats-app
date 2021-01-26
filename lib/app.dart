import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:clashroyalestats/router.gr.dart' as router;
import 'package:flutter_localizations/flutter_localizations.dart';
import 'generated/l10n.dart';

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final extendNavigator =
        ExtendedNavigator<router.Router>(router: router.Router());

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      builder: extendNavigator,
    );
  }
}
