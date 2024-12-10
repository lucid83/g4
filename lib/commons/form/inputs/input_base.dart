import 'package:flutter/material.dart';
import "package:g4/commons/theming/extension.theme.dart";

abstract class InputBase extends StatefulWidget {
  const InputBase({
    super.key,
    this.label,
    this.hint,
    this.validateFn,
    this.suffixIcon,
    this.obscureText = false,
    this.autoCorrect = true,
  });

  final String? label;
  final String? hint;
  final FormFieldValidator<dynamic>? validateFn;
  final Widget? suffixIcon;
  final bool obscureText;
  final bool autoCorrect;

  @override
  State<InputBase> createState() => _InputBaseState();
}

class _InputBaseState extends State<InputBase> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.label != null)
          Text(
            widget.label!,
            style: context.theme.label2,
          ),
        if (widget.label != null) const SizedBox(height: 8),
        TextFormField(
          validator: widget.validateFn,
          obscureText: widget.obscureText,
          autocorrect: widget.autoCorrect,
          decoration: InputDecoration(
            hintText: widget.hint,
            hintStyle: context.theme.input.hintStyle,
            border: context.theme.input.border,
            suffixIcon: widget.suffixIcon,
          ),
        ),
      ],
    );
  }
}
