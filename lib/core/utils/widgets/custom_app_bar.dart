import 'package:flutter/material.dart';
import 'package:fruits_app/core/utils/app_text_styles.dart';

AppBar buildAppBar(BuildContext context,
    {required String title, void Function()? onTap}) {
  return AppBar(
    backgroundColor: Colors.white,
    centerTitle: true,
    title: Text(
      title,
      style: AppTextStyles.bold19,
    ),
    leading: GestureDetector(
      onTap: onTap,
      child: Icon(Icons.arrow_back_ios_new),
    ),
  );
}
