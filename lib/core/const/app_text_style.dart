import 'package:flutter/material.dart';

class AppTextStyle {
  static TextStyle body16(
    BuildContext context, {
    double? fontSize,
    double? height,
    Color? color,
    FontWeight? fontWeight,
    TextDecoration? textDecoration,
    Color? decorationColor,
    double? letterSpacing,
  }) {
    final baseStyle = Theme.of(context).textTheme.bodySmall!;

    return baseStyle.copyWith(
      fontSize: fontSize,
      height: height,
      color: color,
      fontWeight: fontWeight,
      decoration: textDecoration,
      decorationColor: decorationColor,
      letterSpacing: letterSpacing,
    );
  }

  static TextStyle body18(
    BuildContext context, {
    double? fontSize,
    double? height,
    Color? color,
    FontWeight? fontWeight,
    TextDecoration? textDecoration,
    Color? decorationColor,
    double? letterSpacing,
  }) {
    final baseStyle = Theme.of(context).textTheme.bodyMedium!;

    return baseStyle.copyWith(
      fontSize: fontSize,
      height: height,
      color: color,
      fontWeight: fontWeight,
      decoration: textDecoration,
      decorationColor: decorationColor,
      letterSpacing: letterSpacing,
    );
  }

  static TextStyle body20(
    BuildContext context, {
    double? fontSize,
    double? height,
    Color? color,
    FontWeight? fontWeight,
    TextDecoration? textDecoration,
    Color? decorationColor,
    double? letterSpacing,
  }) {
    final baseStyle = Theme.of(context).textTheme.bodyLarge!;

    return baseStyle.copyWith(
      fontSize: fontSize,
      height: height,
      color: color,
      fontWeight: fontWeight,
      decoration: textDecoration,
      decorationColor: decorationColor,
      letterSpacing: letterSpacing,
    );
  }

  static TextStyle label18(
    BuildContext context, {
    double? fontSize,
    double? height,
    Color? color,
    FontWeight? fontWeight,
    TextDecoration? textDecoration,
    Color? decorationColor,
    double? letterSpacing,
  }) {
    final baseStyle = Theme.of(context).textTheme.labelLarge!;

    return baseStyle.copyWith(
      fontSize: fontSize,
      height: height,
      color: color,
      fontWeight: fontWeight,
      decoration: textDecoration,
      decorationColor: decorationColor,
      letterSpacing: letterSpacing,
    );
  }

  static TextStyle label16(
    BuildContext context, {
    double? fontSize,
    double? height,
    Color? color,
    FontWeight? fontWeight,
    TextDecoration? textDecoration,
    Color? decorationColor,
    double? letterSpacing,
  }) {
    final baseStyle = Theme.of(context).textTheme.labelMedium!;

    return baseStyle.copyWith(
      fontSize: fontSize,
      height: height,
      color: color,
      fontWeight: fontWeight,
      decoration: textDecoration,
      decorationColor: decorationColor,
      letterSpacing: letterSpacing,
    );
  }

  static TextStyle label14(
    BuildContext context, {
    double? fontSize,
    double? height,
    Color? color,
    FontWeight? fontWeight,
    TextDecoration? textDecoration,
    Color? decorationColor,
    double? letterSpacing,
  }) {
    final baseStyle = Theme.of(context).textTheme.labelSmall!;

    return baseStyle.copyWith(
      fontSize: fontSize,
      height: height,
      color: color,
      fontWeight: fontWeight,
      decoration: textDecoration,
      decorationColor: decorationColor,
      letterSpacing: letterSpacing,
    );
  }
}
