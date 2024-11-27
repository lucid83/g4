import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:g4/commons/theming/global.theme.dart';
import 'package:g4/router.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Gatekeeper',
      routerConfig: router,
      themeMode: ThemeMode.light, //or ThemeMode.dark
      theme: GlobalThemData.lightThemeData,
      darkTheme: GlobalThemData.darkThemeData,
    );
  }
}
