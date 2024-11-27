import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:g4/features/splashScreen/data/splash.repo.dart';
import "package:go_router/go_router.dart";

class SplashButtonController {
  SplashButtonController({
    this.ctx,
    required this.currentScreen,
    required this.finalScreen,
    this.nextScreen,
  });

  final BuildContext? ctx;
  final dynamic nextScreen;
  final int currentScreen;
  final int finalScreen;

  void onPressed() {
    if (currentScreen >= finalScreen && ctx != null) {
      ctx?.go("/register");
      return;
    }
    nextScreen != null ? nextScreen() : null;
  }

  String get currentText {
    if (currentScreen >= finalScreen) {
      return "Sign up";
    }
    return "Continue";
  }
}

final splashBtnTextProvider = Provider((ref) {
  final currentScreen = ref.watch(splashRepoProvider);
  final finalScreen = ref.read(splashRepoProvider.notifier).finalScreenIndex;

  return SplashButtonController(
    currentScreen: currentScreen,
    finalScreen: finalScreen,
  );
});

final splashBtnFnProvider =
    Provider.family<SplashButtonController, BuildContext>(
  (ref, arg) {
    final currentScreen = ref.watch(splashRepoProvider);
    final finalScreen = ref.read(splashRepoProvider.notifier).finalScreenIndex;
    final nextFn = ref.read(splashRepoProvider.notifier).nextScreen;

    return SplashButtonController(
      ctx: arg,
      currentScreen: currentScreen,
      finalScreen: finalScreen,
      nextScreen: nextFn,
    );
  },
);
