import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruits_app/core/utlis/app_colors.dart';
import 'package:fruits_app/features/onbording/presintation/widgets/onbording_page_view.dart';

class OnbordingViewBody extends StatelessWidget {
  const OnbordingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: OnbordingPageView(),
        ),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
            color: AppColors.primaryColor,
            activeColor: AppColors.primaryColor.withValues(alpha: 0.5),
          ),
        )
      ],
    );
  }
}
