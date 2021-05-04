import 'package:flutter/material.dart';

class PrimaryButton extends InkWell {
  PrimaryButton(
      {required VoidCallback onPressed, required Widget child, Color? color})
      : super(
          onTap: onPressed,
          child: child,
        );
}
