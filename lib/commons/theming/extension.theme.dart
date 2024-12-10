import 'package:flutter/material.dart';

extension UIThemeExtension on BuildContext {
  AppTheme get theme => AppTheme(ctx: this);
  ExtensionColors get colors => ExtensionColors(ctx: this);
}

class AppTheme {
  final BuildContext ctx;

  AppTheme({required this.ctx});

  // * (default) TextTheme
  TextStyle? get h1 => Theme.of(ctx).textTheme.titleLarge;
  TextStyle? get h2 => Theme.of(ctx).textTheme.titleLarge;
  TextStyle? get h3 => Theme.of(ctx).textTheme.titleSmall;
  TextStyle? get body1 => Theme.of(ctx).textTheme.bodyLarge;
  TextStyle? get body2 => Theme.of(ctx).textTheme.bodyMedium;
  TextStyle? get body3 => Theme.of(ctx).textTheme.bodySmall;
  TextStyle? get label1 => Theme.of(ctx).textTheme.labelLarge;
  TextStyle? get label2 => Theme.of(ctx).textTheme.labelMedium;
  TextStyle? get label3 => Theme.of(ctx).textTheme.labelSmall;

  // * input decoration theme
  InputDecorationTheme get input => Theme.of(ctx).inputDecorationTheme;
}

class ExtensionColors {
  final BuildContext ctx;

  ExtensionColors({required this.ctx});

  get primary => Theme.of(ctx).colorScheme.primary;
  get onPrimary => Theme.of(ctx).colorScheme.onPrimary;
  get secondary => Theme.of(ctx).colorScheme.secondary;
  get onSecondary => Theme.of(ctx).colorScheme.onSecondary;
  get error => Theme.of(ctx).colorScheme.error;
  get onError => Theme.of(ctx).colorScheme.onError;
  get surface => Theme.of(ctx).colorScheme.surface;
  get onSurface => Theme.of(ctx).colorScheme.onSurface;
  get brightness => Theme.of(ctx).colorScheme.brightness;
}
