  import 'package:flutter/material.dart';

void buildsnakbar(BuildContext context,  String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.green,
      ),
    );
  }