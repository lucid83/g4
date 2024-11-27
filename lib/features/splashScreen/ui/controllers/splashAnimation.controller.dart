import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:g4/features/splashScreen/data/splash.repo.dart';
import 'package:g4/features/splashScreen/domain/attr.model.dart';
import 'package:g4/features/splashScreen/ui/splash.state.dart';

class SplashAnimationController {
  SplashAnimationController({required this.currentScreen});

  final int currentScreen;

  List<AnimatedAttrs> get animationStates {
    final ds = attr[currentScreen].map((a) {
      return a;
    }).toList();
    return ds;
  }
}

final splashAnimationControllerProvider = Provider((ref) {
  final currentScreen = ref.watch(splashRepoProvider);
  return SplashAnimationController(currentScreen: currentScreen);
});
