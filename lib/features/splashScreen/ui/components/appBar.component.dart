import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:g4/features/splashScreen/data/splash.repo.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashAppBar extends ConsumerWidget implements PreferredSizeWidget {
  const SplashAppBar({super.key, required this.padding});

  final double padding;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppBar(
      titleSpacing: padding,
      title: GestureDetector(
        onTap: ref.read(splashRepoProvider.notifier).prevScreen,
        child: Row(
          children: [
            Image.asset(
              "images/logo.png",
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              "Gatekeeper23",
              style: GoogleFonts.outfit(),
            ),
          ],
        ),
      ),
      centerTitle: false,
      actions: [
        TextButton(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.grey[700],
          ),
          onPressed: ref.read(splashRepoProvider.notifier).skip,
          child: Text(
            "skip",
            style: GoogleFonts.outfit(),
          ),
        ),
        SizedBox(
          width: padding - 18,
        ),
      ],
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
