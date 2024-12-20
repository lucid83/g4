import 'package:flutter_riverpod/flutter_riverpod.dart';

class SplashRepository extends Notifier<int> {
  @override
  int build() {
    return 0;
  }

  int get finalScreenIndex => 3;

  nextScreen() {
    if (state < finalScreenIndex) {
      state += 1;
    }
  }

  prevScreen() {
    if (state > 0) {
      state -= 1;
    }
  }

  skip() {
    state = finalScreenIndex;
  }
}

final splashRepoProvider = NotifierProvider<SplashRepository, int>(() {
  return SplashRepository();
});
