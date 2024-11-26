import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:g4/features/splashScreen/data/splash.repo.dart';

class SplashAnimationController extends StateNotifier {
  SplashAnimationController(super.state, {required this.splashRepo});

  final SplashRepository splashRepo;
}
