import 'package:flutter/material.dart';
import 'package:fruits_app/features/splash/presintation/view/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings setting) {
  switch (setting.name) {
    case SplashView.route:
      return MaterialPageRoute(builder: (context) => SplashView());
    default : 
    return MaterialPageRoute(builder: (context) => Scaffold());
  }
}
