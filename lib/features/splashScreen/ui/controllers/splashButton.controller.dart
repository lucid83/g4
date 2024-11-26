import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:g4/features/splashScreen/data/splash.repo.dart';

class SplashButtonController extends StateNotifier {
  SplashButtonController(super.state, {required this.splashRepo});

  final SplashRepository splashRepo;
}
