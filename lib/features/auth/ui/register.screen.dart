// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:g4/commons/components/appBar.component.dart';
import "package:g4/commons/theming/textExtension.theme.dart";

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SystemAppBar(padding: 24),
      body: Padding(
        padding: EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Sign Up", style: context.h1),
            Text(
              "Spend 2 minutes max to create an account",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Username",
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
