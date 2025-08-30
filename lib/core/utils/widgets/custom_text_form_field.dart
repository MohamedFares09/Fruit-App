import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key, required this.hintText, this.suffixIcon, required this.keyboardType});
  final String hintText;
  final Widget? suffixIcon;
  final TextInputType keyboardType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xffF9FAFA),
        hintText: hintText,
        suffixIcon: suffixIcon,
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
        
      ),
    );
  }

  OutlineInputBorder buildBorder( ) {
    return OutlineInputBorder(
        borderSide: BorderSide(
          width: 1,
          color: Colors.grey,
        ),
      );
  }
}
