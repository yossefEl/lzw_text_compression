import 'package:flutter/material.dart' show BoxShadow, Colors, Offset;
import 'colors.dart';

class Shadows {
  static final BoxShadow appBarShadow = BoxShadow(
    color: Colors.black.withOpacity(0.1),
    offset: Offset(0, 3),
    blurRadius: 6,
  );
  static final BoxShadow cardShadow = BoxShadow(
    color: Colors.black.withOpacity(0.1),
    offset: Offset(19, 3),
    blurRadius: 57,
  );
  static final topShadow = BoxShadow(
    color: Colors.black.withOpacity(0.1),
    offset: Offset(0, -3),
    blurRadius: 6,
  );
  static final buttonShadow = BoxShadow(
    color: AppColors.bgColor.withOpacity(0.2),
    offset: Offset(0, 3),
    blurRadius: 6,
  );
}
