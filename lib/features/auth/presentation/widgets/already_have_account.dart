import 'package:flutter/material.dart';
import 'package:fruits_app/core/utils/app_colors.dart';
import 'package:fruits_app/core/utils/app_text_styles.dart';

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "تمتلك حساب بالفعل ؟",
          style: AppTextStyles.semibold16,
        ),
        SizedBox(width: 4),
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Text(
            "تسجيل الدخول",
            style: AppTextStyles.semibold16
                .copyWith(color: AppColors.primaryColor),
          ),
        ),
      ],
    );
  }
}
