import 'package:flutter/material.dart';
import 'package:g4/commons/theming/extension.theme.dart';
import "package:go_router/go_router.dart";

class NoAccountPrompt extends StatelessWidget {
  const NoAccountPrompt({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const Text("Already have an account"),
        TextButton(
          onPressed: () => context.goNamed("login"),
          child: Text(
            "Login",
            style:
                context.theme.label3?.copyWith(color: context.colors.secondary),
          ),
        )
      ],
    );
  }
}
