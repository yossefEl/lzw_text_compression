import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

class Borders {
  static BorderSide primaryBorder = BorderSide(
    color: Color.fromARGB(255, 212, 212, 212),
    width: 3,
    style: BorderStyle.solid,
  );
  static BorderSide secondaryBorder = BorderSide(
    color: Color.fromARGB(255, 112, 112, 112),
    width: 3,
    style: BorderStyle.solid,
  );

  static final primaryInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(
        color: Color.fromARGB(255, 212, 212, 212),
        width: 3,
        style: BorderStyle.solid,
      ));
  static final secondaryInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(
        color: Color.fromARGB(255, 112, 112, 112),
        width: 3,
        style: BorderStyle.solid,
      ));
  static final focusedInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(
        color: AppColors.bgColor,
        width: 3,
        style: BorderStyle.solid,
      ));
  static final inputBorderDecoration = InputDecoration(
    border: Borders.primaryInputBorder,
    fillColor: AppColors.bgColor,
    focusColor: AppColors.bgColor,
    focusedBorder: Borders.focusedInputBorder,
    filled: true,
    contentPadding: EdgeInsets.only(top: 0, bottom: 0, left: 10),
    hintStyle: TextStyle(
      color: AppColors.bgColor,
      fontWeight: FontWeight.w400,
      fontSize: 18,
    ),
  );
}
