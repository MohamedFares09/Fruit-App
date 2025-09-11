import 'package:flutter/material.dart';
import 'package:fruits_app/core/utils/widgets/custom_text_form_field.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({super.key});

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _obscureText = true;

  

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      onSaved: (value) {},
      hintText: "كلمة المرور",
      keyboardType: TextInputType.visiblePassword,
      obscureText: _obscureText,
      suffixIcon: _obscureText ? IconButton(
        icon: Icon(
          _obscureText ? Icons.visibility : Icons.visibility_off,
          color: Colors.grey,
        ),
        onPressed: () {
          setState(() {
            _obscureText = !_obscureText;
          });
        },
      ) : IconButton(onPressed: () {}, icon: Icon(
        _obscureText ? Icons.visibility : Icons.visibility_off,
        color: Colors.grey,
      )),
    );
  }
}
