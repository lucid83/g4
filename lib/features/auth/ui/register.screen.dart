// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:g4/commons/components/appBar.component.dart';
import 'package:g4/commons/form/form_builder.dart';
import 'package:g4/commons/form/inputs/password_input.dart';
import 'package:g4/commons/form/inputs/text_input.dart';
import "package:g4/commons/theming/extension.theme.dart";
import 'package:g4/features/auth/ui/components/no_Account_Prompt.dart';

class RegisterScreen extends ConsumerWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: SystemAppBar(padding: 24),
      // TODO: using the builder pattern, recreate all the form page to a single composable page

      /*
        formBuilder
          .AddTextField(type: text, label: "username")
          .AddPasswordField(....)
          .build
        BuiltForms.signUpForm()
        
        
        formBuilder
          .AddField(TextField())
          .AddField(PasswordField())
          .build
        BuiltForms.signUpForm()
      */

      body: Padding(
        padding: EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text("Sign Up", style: context.theme.h1),
            SizedBox(height: 8),
            Text(
              "Spend 2 minutes max to create an account",
              style: context.theme.body2,
            ),
            SizedBox(height: 36),
            FormBuilder(formKey: GlobalKey<FormState>())
                .setSubmitBtnText("Continue")
                .addInputField(
                    TextInput(label: "Username*", hint: "user_uniqueName"))
                .addInputField(TextInput(
                    label: "Email address*", hint: "somebody@emailexample.com"))
                .addInputField(PasswordInput())
                .addFooter(NoAccountPrompt())
                .build(),
          ],
        ),
      ),
    );
  }
}
