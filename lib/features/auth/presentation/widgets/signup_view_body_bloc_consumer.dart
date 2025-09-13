import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_app/core/hleper_functions/build_snak_bar.dart';
import 'package:fruits_app/features/auth/presentation/cubits/signup_cubit.dart/signup_cubit.dart';
import 'package:fruits_app/features/auth/presentation/cubits/signup_cubit.dart/signup_state.dart';
import 'package:fruits_app/features/auth/presentation/widgets/signup_view_body.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class SignupViewBodyBlocConsumer extends StatelessWidget {
  const SignupViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupCubit, SignupState>(
      listener: (context, state) {
        if (state is SignupErrorState) {
          buildsnakbar(context, state.message , Colors.red);
        } else if (state is SignupSuccessState) {
          buildsnakbar(context, 'تم انشاء الحساب بنجاح', Colors.green);
          // Navigate to home screen or other screen
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
            inAsyncCall: state is SignupLoadingState ? true : false,
            child: SignupViewBody());
      },
    );
  }


}
