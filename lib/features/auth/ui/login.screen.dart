import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:g4/commons/components/appBar.component.dart';
import 'package:g4/commons/form/form_builder.dart';
import 'package:g4/commons/form/inputs/password_input.dart';
import 'package:g4/commons/form/inputs/text_input.dart';
import "package:g4/commons/theming/extension.theme.dart";

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: const SystemAppBar(padding: 34),
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
            FormBuilder(formKey: GlobalKey<FormState>())
                .setSubmitBtnText("Continue")
                .addInputField(const TextInput(
                    label: "Email address", hint: "user#@email.com"))
                .addInputField(const PasswordInput())
                .setSubmitHandler(() => null)
                .build(),

            // Column(
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: [
            //     Text(
            //       "Email address*",
            //       style: context.theme.label2,
            //     ),
            //     const SizedBox(height: 8),
            //     TextFormField(
            //       decoration: InputDecoration(
            //         hintText: "somebody@emailexample.com",
            //         hintStyle: context.theme.input.hintStyle,
            //         border: context.theme.input.border,
            //       ),
            //     ),
            //   ],
            // ),
            // const SizedBox(height: 36),
            // Column(
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: [
            //     Text(
            //       "Password*",
            //       style: context.theme.label2,
            //     ),
            //     const SizedBox(height: 8),
            //     TextFormField(
            //       obscureText: !ref.read(passwordInputControllerProvider),
            //       autocorrect: false,
            //       decoration: InputDecoration(
            //         border: context.theme.input.border,
            //         hintText: "***************",
            //         hintStyle: context.theme.input.hintStyle,
            //         suffixIcon: IconButton(
            //           onPressed: () => ref
            //               .read(passwordInputControllerProvider.notifier)
            //               .toggle,
            //           icon: ref.watch(passwordIconProvider),
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
            // Expanded(
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.stretch,
            //     mainAxisAlignment: MainAxisAlignment.end,
            //     children: [
            //       const SystemButton(
            //         text: ("Continue"),
            //         onPressed: null,
            //       ),
            //       const SizedBox(height: 10),
            //       Row(
            //         mainAxisAlignment: MainAxisAlignment.end,
            //         children: [
            //           const Text("Don't have an account"),
            //           TextButton(
            //             onPressed: () => context.goNamed("register"),
            //             child: Text(
            //               "Register",
            //               style: context.theme.label3
            //                   ?.copyWith(color: context.colors.secondary),
            //             ),
            //           )
            //         ],
            //       ),
            //     ],
            //   ),
            // ),
            const SizedBox(height: 30)
          ],
        ),
      ),
    );
  }
}
