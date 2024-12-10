import 'package:flutter/material.dart';
import 'package:g4/commons/form/inputs/input_base.dart';
import "package:g4/commons/theming/extension.theme.dart";
import 'package:iconsax_plus/iconsax_plus.dart';

class PasswordInput extends InputBase {
  const PasswordInput({
    super.key,
    super.label = "Password*",
    super.hint = "**********************",
    super.validateFn,
  });

  @override
  State<PasswordInput> createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordInput> {
  bool isObscure = true;

  Widget getIcon() {
    if (isObscure) {
      return const Icon(IconsaxPlusLinear.eye_slash);
    }
    return const Icon(IconsaxPlusLinear.eye);
  }

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
          obscureText: isObscure,
          autocorrect: false,
          decoration: InputDecoration(
            hintText: widget.hint,
            hintStyle: context.theme.input.hintStyle,
            border: context.theme.input.border,
            suffixIcon: IconButton(
              onPressed: () => setState(() {
                isObscure = !isObscure;
              }),
              icon: getIcon(),
            ),
          ),
        ),
      ],
    );
  }
}
