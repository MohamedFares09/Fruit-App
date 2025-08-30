import 'package:flutter/material.dart';
import 'package:fruits_app/features/auth/presentation/views/login_view.dart';
import 'package:fruits_app/features/auth/presentation/views/signup_view.dart';
import 'package:fruits_app/features/on_boarding/presentation/view/onbording_view.dart';
import 'package:fruits_app/features/splash/presentation/view/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings setting) {
  switch (setting.name) {
    case SplashView.route:
      return MaterialPageRoute(builder: (context) => SplashView());
      case OnbordingView.route:
      return MaterialPageRoute(builder: (context) => OnbordingView());
      case  LoginView.route :
      return  MaterialPageRoute(builder: (context) => LoginView());
          case  SignupView.route :
      return  MaterialPageRoute(builder: (context) => SignupView());
    default : 
    return MaterialPageRoute(builder: (context) => Scaffold());
  }
}
