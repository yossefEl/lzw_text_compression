import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lzw_compression_app/src/helpers/styles/radii.dart';
import 'package:lzw_compression_app/src/helpers/styles/shadows.dart';

class PrimaryCard extends StatelessWidget {
  final bool showShadow;
  final EdgeInsets? padding;
  final Widget? child;
  final EdgeInsets? margin;
  final double? width;
  final double? height;
  final Color? bgColor;
  final BorderRadius? borderRadius;

  final Border? border;

  const PrimaryCard(
      {this.child,
      this.padding,
      this.showShadow = false,
      this.margin,
      this.width,
      this.height,
      this.bgColor,
      this.border,
      this.borderRadius});
  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: width,
        margin: margin ?? EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
    border: border,
    color: bgColor ?? Colors.white,
    borderRadius: borderRadius ?? Radii.k10pxRadius,
    boxShadow: showShadow ? [Shadows.cardShadow] : null,
        ),
        padding: padding ?? EdgeInsets.all(16),
        child: child,
      );
  }
}
