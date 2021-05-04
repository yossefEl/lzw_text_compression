import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'colors.dart';

class Gradients {
  static const Gradient primaryGradient =  LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [AppColors.camouflageGreen, AppColors.codGray]);
  
}
