import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:g4/features/splashScreen/data/splash.repo.dart';
import 'package:g4/features/splashScreen/ui/splash.state.dart';

class SplashTextController {
  SplashTextController({required this.currentScreen});
  final int currentScreen;

  String get title => captions[currentScreen]["title"] ?? "";
  String get sub => captions[currentScreen]["sub"] ?? "";
}

final splashTextControllerProvider = Provider((ref) {
  final int currentScreen = ref.watch(splashRepoProvider);

  return SplashTextController(currentScreen: currentScreen);
});
