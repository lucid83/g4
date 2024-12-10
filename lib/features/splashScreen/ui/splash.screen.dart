// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:g4/commons/components/appBar.component.dart';
import 'package:g4/commons/components/button.component.dart';
import 'package:g4/commons/theming/extension.theme.dart';
import 'package:g4/constants.dart';
import 'package:g4/features/splashScreen/data/splash.repo.dart';
import 'package:g4/features/splashScreen/ui/components/animated_disk.component.dart';
import 'package:g4/features/splashScreen/ui/controllers/splashAnimation.controller.dart';
import 'package:g4/features/splashScreen/ui/controllers/splashButton.controller.dart';
import 'package:g4/features/splashScreen/ui/controllers/splashText.controller.dart';

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
      appBar: SystemAppBar(
        padding: pagePadding,
        actions: [
          TextButton(
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.grey[700],
            ),
            onPressed: ref.read(splashRepoProvider.notifier).skip,
            child: Text(
              "skip",
              style: context.theme.label3,
            ),
          ),
          SizedBox(
            width: pagePadding - 18,
          ),
        ],
      ),
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
              style: context.theme.h1,
            ),
            SizedBox(height: 12),
            Text(
              ref.watch(splashTextControllerProvider).sub,
              style: context.theme.body1,
            ),
            SizedBox(height: 32),

            // ##############################
            // BUTTON SECTION
            // ##############################
            SystemButton(
              onPressed: ref.read(splashBtnFnProvider(context)).onPressed,
              text: ref.read(splashBtnTextProvider).currentText,
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
            SizedBox(height: 62),
          ],
        ),
      ),
    );
  }
}
