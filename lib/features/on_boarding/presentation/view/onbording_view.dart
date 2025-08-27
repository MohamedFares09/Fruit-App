import 'package:flutter/material.dart';
import 'package:fruits_app/features/on_boarding/presentation/widgets/onbording_view_body.dart';

class OnbordingView extends StatelessWidget {
  const OnbordingView({super.key});
  static const route = "onbording";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: OnbordingViewBody()),
    );
  }
}
