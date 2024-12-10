// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:g4/commons/components/button.component.dart';

class GForm extends StatefulWidget {
  const GForm({
    super.key,
    required this.inputs,
    this.submitHandler,
    required this.submitText,
    required this.formKey,
    this.footer,
  });

  final GlobalKey<FormState> formKey;
  final List<Widget> inputs;
  final String submitText;
  final VoidCallback? submitHandler;
  final Widget? footer;

  @override
  State<GForm> createState() => _GFormState();
}

class _GFormState extends State<GForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: Column(
        children: [
          ...widget.inputs.map(
            (input) => Padding(
              padding: const EdgeInsets.only(bottom: 32),
              child: input,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SystemButton(
                text: widget.submitText,
                onPressed: null,
              ),
              SizedBox(height: 0),
              if (widget.footer != null) widget.footer!,
            ],
          ),
        ],
      ),
    );
  }
}
