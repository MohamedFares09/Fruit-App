import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_app/constants.dart';
import 'package:fruits_app/core/utils/widgets/custom_button.dart';
import 'package:fruits_app/core/utils/widgets/custom_text_form_field.dart';
import 'package:fruits_app/core/utils/widgets/password_feild.dart';
import 'package:fruits_app/features/auth/presentation/cubits/signin/signin_cubit.dart';
import 'package:fruits_app/features/auth/presentation/widgets/do_not_have_an_account.dart';
import 'package:fruits_app/features/auth/presentation/widgets/forget_password.dart';
import 'package:fruits_app/features/auth/presentation/widgets/login_social_media.dart';
import 'package:fruits_app/features/auth/presentation/widgets/or_divider.dart';

class SigninViewBody extends StatefulWidget {
  const SigninViewBody({super.key});

  @override
  State<SigninViewBody> createState() => _SigninViewBodyState();
}

class _SigninViewBodyState extends State<SigninViewBody> {
  late String email, password;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
          child: Form(
            key: formKey,
            autovalidateMode: autovalidateMode,
            child: Column(
              children: [
                SizedBox(
                  height: 24,
                ),
                CustomTextFormField(
                  onSaved: (value) {
                    email = value!;
                  },
                  keyboardType: TextInputType.emailAddress,
                  hintText: "البريد الالكتروني",
                ),
                SizedBox(
                  height: 16,
                ),
                PasswordField(
                  onSaved: (value) {
                    password = value!;
                  },
                ),
                SizedBox(
                  height: 16,
                ),
                ForgetPassword(
                  
                ),
                SizedBox(
                  height: 33,
                ),
                CustomButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()){
                        formKey.currentState!.save();
                        context.read<SigninCubit>().signin(email, password);
                      } else {
                        autovalidateMode = AutovalidateMode.always;
                        setState(() {});
                      }
                    },
                    text: "تسجيل الدخول"),
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
      ),
    );
  }
}
