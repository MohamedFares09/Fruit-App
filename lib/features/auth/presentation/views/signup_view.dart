import 'package:flutter/material.dart';
import 'package:fruits_app/core/utils/widgets/custom_app_bar.dart';
import 'package:fruits_app/features/auth/presentation/widgets/signup_view_body.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});
  static const route = 'signup';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: "حساب جديد"),
      body: SignupViewBody(),
    );
  }
}
