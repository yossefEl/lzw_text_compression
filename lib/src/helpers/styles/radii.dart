import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Radii {
  static const BorderRadius k10pxRadius =
      BorderRadius.all(Radius.circular(10));
  static const BorderRadius k5pxRadius =
      BorderRadius.all(Radius.circular(5));
  static final globalContainerRadius = BorderRadius.only(
      bottomLeft: Radius.circular(35), bottomRight: Radius.circular(35));

  static final subAppsContainerRadius = BorderRadius.only(
      topLeft: Radius.circular(35), topRight: Radius.circular(35));

  static final profileImageRadius = BorderRadius.circular(10);
}
