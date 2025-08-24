import 'package:flutter/material.dart';
import 'package:fruits_app/features/onbording/presintation/view/onbording_view.dart';
import 'package:fruits_app/features/splash/presintation/view/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings setting) {
  switch (setting.name) {
    case SplashView.route:
      return MaterialPageRoute(builder: (context) => SplashView());
      case OnbordingView.route:
      return MaterialPageRoute(builder: (context) => OnbordingView());
    default : 
    return MaterialPageRoute(builder: (context) => Scaffold());
  }
}
