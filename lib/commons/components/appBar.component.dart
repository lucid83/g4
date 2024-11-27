import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:g4/commons/theming/textExtension.theme.dart';
import 'package:g4/features/splashScreen/data/splash.repo.dart';

class SystemAppBar extends ConsumerWidget implements PreferredSizeWidget {
  const SystemAppBar({super.key, required this.padding, this.actions});

  final double padding;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppBar(
      toolbarHeight: 80,
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
              style: context.h3,
            ),
          ],
        ),
      ),
      centerTitle: false,
      actions: actions,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80);
}
