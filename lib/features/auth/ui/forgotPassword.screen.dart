import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:g4/commons/components/button.component.dart';
import "package:g4/commons/theming/extension.theme.dart";
import 'package:g4/features/auth/ui/controllers/passwordInput.controller.dart';
import "package:go_router/go_router.dart";

class ForgotpasswordScreen extends ConsumerWidget {
  const ForgotpasswordScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text("Sign In", style: context.theme.h1),
            const SizedBox(height: 8),
            Text(
              "Let’s get you all strapped in.",
              style: context.theme.body2,
            ),
            const SizedBox(height: 36),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Email address*",
                  style: context.theme.label2,
                ),
                const SizedBox(height: 8),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "somebody@emailexample.com",
                    hintStyle: context.theme.input.hintStyle,
                    border: context.theme.input.border,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 36),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Password*",
                  style: context.theme.label2,
                ),
                const SizedBox(height: 8),
                TextFormField(
                  obscureText: !ref.read(passwordInputControllerProvider),
                  autocorrect: false,
                  decoration: InputDecoration(
                    border: context.theme.input.border,
                    hintText: "***************",
                    hintStyle: context.theme.input.hintStyle,
                    suffixIcon: IconButton(
                      onPressed: () => ref
                          .read(passwordInputControllerProvider.notifier)
                          .toggle,
                      icon: ref.watch(passwordIconProvider),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                TextButton(
                  onPressed: () => context.go("/"),
                  child: Text(
                    "Register",
                    style: context.theme.label3
                        ?.copyWith(color: context.colors.secondary),
                  ),
                )
              ],
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const SystemButton(
                    text: ("Continue"),
                    onPressed: null,
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text("Don't have an account"),
                      TextButton(
                        onPressed: () => context.go("/"),
                        child: Text(
                          "Register",
                          style: context.theme.label3
                              ?.copyWith(color: context.colors.secondary),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30)
          ],
        ),
      ),
    );
  }
}
