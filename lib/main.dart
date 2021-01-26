import 'package:clashroyalestats/app.dart';
import 'package:clashroyalestats/injector.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.dev);
  runApp(App());
}
