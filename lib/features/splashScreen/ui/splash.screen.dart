// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:g4/constants.dart';
import 'package:g4/features/splashScreen/data/splash.repo.dart';
import 'package:g4/features/splashScreen/ui/components/animated_disk.component.dart';
import 'package:g4/features/splashScreen/ui/components/appBar.component.dart';
import 'package:g4/features/splashScreen/ui/controllers/splashAnimation.controller.dart';
import 'package:g4/features/splashScreen/ui/controllers/splashButton.controller.dart';
import 'package:g4/features/splashScreen/ui/controllers/splashText.controller.dart';
import 'package:google_fonts/google_fonts.dart';

class Splash1 extends ConsumerStatefulWidget {
  const Splash1({super.key});

  @override
  ConsumerState<Splash1> createState() => _Splash1State();
}

class _Splash1State extends ConsumerState<Splash1> {
  final padding = Padding(padding: EdgeInsets.symmetric(horizontal: 32));

  @override
  Widget build(BuildContext context) {
    final currentScreen = ref.watch(splashRepoProvider);
    final totalScreens =
        ref.watch(splashRepoProvider.notifier).finalScreenIndex;

    const pagePadding = 32.0;

    return Scaffold(
      appBar: SplashAppBar(padding: pagePadding),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: pagePadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 48,
            ),
            // ##############################
            // ANIMATED SECTION
            // ##############################
            Expanded(
              flex: 1,
              child: Stack(
                fit: StackFit.loose,
                clipBehavior: Clip.none,
                children: ref
                    .watch(splashAnimationControllerProvider)
                    .animationStates
                    .map((atr) {
                  return AnimatedDisk(
                    attrs: atr,
                  );
                }).toList(),
              ),
            ),

            // ##############################
            // TEXT SECTION
            // ##############################
            Text(
              ref.watch(splashTextControllerProvider).title,
              style: GoogleFonts.outfit(
                fontSize: 40,
                fontWeight: FontWeight.w600,
                height: 1.2,
              ),
            ),
            SizedBox(height: 12),
            Text(
              ref.watch(splashTextControllerProvider).sub,
              style: GoogleFonts.outfit(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 32),

            // ##############################
            // BUTTON SECTION
            // ##############################
            ElevatedButton(
              onPressed: () {
                ref.read(splashBtnFnProvider(context)).onPressed();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.nature,
                foregroundColor: AppColors.offWhite,
                elevation: 0,
                padding: EdgeInsets.symmetric(
                  vertical: 16,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text(
                ref.read(splashBtnTextProvider).currentText,
                style: GoogleFonts.outfit(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: 32),

            // ##############################
            // STEP INDICATOR SECTION
            // ##############################
            Wrap(
              alignment: WrapAlignment.center,
              spacing: 24,
              children: [
                for (int i = 0; i <= totalScreens; i++)
                  AnimatedContainer(
                    duration: Duration(milliseconds: 500),
                    width: 12,
                    height: 12,
                    decoration: BoxDecoration(
                      color: i == currentScreen
                          ? AppColors.nature
                          : AppColors.dirty.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(82),
                    ),
                  ),
              ],
            ),
            SizedBox(height: 92),
          ],
        ),
      ),
    );
  }
}
