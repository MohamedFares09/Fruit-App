import 'package:flutter/material.dart';
import 'package:fruits_app/constants.dart';
import 'package:fruits_app/core/utils/widgets/custom_button.dart';
import 'package:fruits_app/core/utils/widgets/custom_text_form_field.dart';
import 'package:fruits_app/features/auth/presentation/widgets/do_not_have_an_account.dart';
import 'package:fruits_app/features/auth/presentation/widgets/forget_password.dart';
import 'package:fruits_app/features/auth/presentation/widgets/login_social_media.dart';
import 'package:fruits_app/features/auth/presentation/widgets/or_divider.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
          child: Column(
            children: [
              SizedBox(
                height: 24,
              ),
              CustomTextFormField(
                keyboardType: TextInputType.emailAddress,
                hintText: "البريد الالكتروني",
              ),
              SizedBox(
                height: 16,
              ),
              CustomTextFormField(
                keyboardType: TextInputType.visiblePassword,
                hintText: "كلمة المرور",
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.visibility,
                    color: Color(0xffC9CECF),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              ForgetPassword(),
              SizedBox(
                height: 33,
              ),
              CustomButton(text: "تسجيل الدخول"),
              SizedBox(
                height: 33,
              ),
              DoNotHaveAnAccount(),
              SizedBox(
                height: 33,
              ),
              OrDivider(),
              SizedBox(
                height: 16,
              ),
              LoginSocialMedia(
                image: "assets/images/google_icons.svg",
                title: "تسجيل بواسطة جوجل ",
                onPressed: () {},
              ),
              SizedBox(
                height: 16,
              ),
              LoginSocialMedia(
                image: "assets/images/ipone_icons.svg",
                title: "تسجيل بواسطة أبل",
                onPressed: () {},
              ),
              SizedBox(
                height: 16,
              ),
              LoginSocialMedia(
                image: "assets/images/facebook_icons.svg",
                title: "تسجيل بواسطة فيس بوك",
                onPressed: () {},
              ),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
