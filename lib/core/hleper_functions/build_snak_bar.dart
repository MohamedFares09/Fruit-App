  import 'package:flutter/material.dart';
import 'package:fruits_app/features/auth/presentation/cubits/signup_cubit.dart/signup_state.dart';

void buildsnakbar(BuildContext context, SignupState state, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: state is SignupErrorState ? Colors.red : Colors.green,
      ),
    );
  }