import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_app/core/hleper_functions/get_it_function.dart';
import 'package:fruits_app/core/utils/widgets/custom_app_bar.dart';
import 'package:fruits_app/core/utils/widgets/custom_progress_hud.dart';
import 'package:fruits_app/features/auth/doman/repos/auth_repo.dart';
import 'package:fruits_app/features/auth/presentation/cubits/signin/signin_cubit.dart';
import 'package:fruits_app/features/auth/presentation/widgets/signin_view_body.dart';
import 'package:fruits_app/features/auth/presentation/widgets/signin_view_body_bloc_consumer.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});
  static const route = "route";
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SigninCubit(getIt<AuthRepo>()),
      child: Scaffold(
        appBar: buildAppBar(context, title: "تسجيل الدخول"),
        body: SigninViewBodyBlocConsumer(),
      ),
    );
  }
}
