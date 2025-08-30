import 'package:flutter/material.dart';
import 'package:fruits_app/constants.dart';
import 'package:fruits_app/core/utils/widgets/custom_button.dart';
import 'package:fruits_app/core/utils/widgets/custom_text_form_field.dart';
import 'package:fruits_app/features/auth/presentation/widgets/already_have_account.dart';
import 'package:fruits_app/features/auth/presentation/widgets/terms_and_condtion_signup.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        child: Column(
          children: [
            SizedBox(height: 24),
            CustomTextFormField(
                hintText: "الاسم كامل", keyboardType: TextInputType.name),
            SizedBox(height: 16),
            CustomTextFormField(
                hintText: "البريد الالكتروني",
                keyboardType: TextInputType.emailAddress),
            SizedBox(height: 16),
            CustomTextFormField(
              hintText: "كلمة المرور",
              keyboardType: TextInputType.visiblePassword,
              suffixIcon: IconButton(
                icon: Icon(
                  Icons.visibility,
                  color: Colors.grey,
                ),
                onPressed: () {
                  // Toggle password visibility
                },
              ),
            ),
            SizedBox(height: 16),
            TermsAndCondtionSignup(),
            SizedBox(height: 30),
            CustomButton(text: "إنشاء حساب جديد"),
            SizedBox(height: 26),
            AlreadyHaveAccount()
          ],
        ),
      ),
    );
  }
}
