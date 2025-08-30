import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_app/core/utils/app_text_styles.dart';

class LoginSocialMedia extends StatelessWidget {
  const LoginSocialMedia(
      {super.key, this.onPressed, required this.image, required this.title});
  final VoidCallback? onPressed;
  final String image;
  final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      width: double.infinity,
      child: TextButton(
          style: ButtonStyle(
            shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(
                side: BorderSide(color: Color(0xffC9CECF), width: 1),
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ),
          onPressed: onPressed,
          child: ListTile(
            visualDensity: VisualDensity(
              vertical: VisualDensity.minimumDensity,
            ),
            leading: SvgPicture.asset(image),
            title: Text(
              title,
              style: AppTextStyles.semibold16,
            ),
          )),
    );
  }
}
