import 'package:flutter/material.dart';

extension UIThemeExtension on BuildContext {
  // * (default) TextTheme
  TextStyle? get h1 => Theme.of(this).textTheme.titleLarge;
  TextStyle? get h2 => Theme.of(this).textTheme.titleLarge;
  TextStyle? get h3 => Theme.of(this).textTheme.titleSmall;

  TextStyle? get body1 => Theme.of(this).textTheme.bodyLarge;
  TextStyle? get body2 => Theme.of(this).textTheme.bodyMedium;
  TextStyle? get body3 => Theme.of(this).textTheme.bodySmall;

  TextStyle? get label1 => Theme.of(this).textTheme.labelLarge;
  TextStyle? get label2 => Theme.of(this).textTheme.labelMedium;
  TextStyle? get label3 => Theme.of(this).textTheme.labelSmall;
}
