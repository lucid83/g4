import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class PasswordVisibilityState extends Notifier<bool> {
  toggle() {
    state = !state;
  }

  @override
  bool build() {
    return false;
  }
}

final passwordInputControllerProvider =
    NotifierProvider<PasswordVisibilityState, bool>(() {
  return PasswordVisibilityState();
});

final passwordIconProvider = Provider((ref) {
  final isVisible = ref.watch(passwordInputControllerProvider);
  if (!isVisible) {
    return const Icon(IconsaxPlusLinear.eye_slash);
  }
  return const Icon(IconsaxPlusLinear.eye);
});
