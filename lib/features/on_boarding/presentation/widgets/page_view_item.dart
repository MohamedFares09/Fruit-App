import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_app/constants.dart';
import 'package:fruits_app/core/services/shared_preferences_single_tone.dart';
import 'package:fruits_app/core/utils/app_text_styles.dart';
import 'package:fruits_app/features/auth/presentation/views/signin_view.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.backGroungImage,
    required this.image,
    required this.subTitle,
    required this.title,
    required this.isVisable,
  });
  final String backGroungImage, image, subTitle;
  final Widget title;
  final bool isVisable;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.40,
          child: Stack(
            children: [
              Positioned.fill(
                child: SvgPicture.asset(
                  backGroungImage,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: SvgPicture.asset(
                  image,
                ),
              ),
              Visibility(
                visible: isVisable,
                child: GestureDetector(
                  onTap: () {
                    SharedPreferencesService.setBool(
                        kIsOnBordingViewScreen, true);
                    Navigator.pushReplacementNamed(context, SignInView.route);
                  },
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      "تخط",
                      style: AppTextStyles.regular13,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 64,
        ),
        title,
        SizedBox(
          height: 24,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 29, right: 29),
          child: Text(
            subTitle,
            style: AppTextStyles.semibold13,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
