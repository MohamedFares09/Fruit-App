import 'package:flutter/material.dart';
import 'package:fruits_app/core/hleper_functions/on_generate_route.dart';
import 'package:fruits_app/features/splash/presintation/view/splash_view.dart';

void main() {
  runApp(const FruitApp());
}
class FruitApp extends StatelessWidget {
  const FruitApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      onGenerateRoute: onGenerateRoute,
      initialRoute: SplashView.route,
    );
  }
}