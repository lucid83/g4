/*
  formBuilder.AddField(type: text, label: "username").AddField(....).build
  BuiltForms.signUpForm()

    formBuilder
      .AddField(TextField())
      .AddField(PasswordField())
      .build
    BuiltForms.signUpForm()
*/

import 'package:flutter/material.dart';
import 'package:g4/commons/form/form.class.dart';
import 'package:g4/commons/form/inputs/input_base.dart';

abstract class GFormBuilder {
  GFormBuilder addInputField(InputBase input);
  GFormBuilder setSubmitHandler(VoidCallback submitHandler);
  GFormBuilder setSubmitBtnText(String submitText);
  GFormBuilder addFooter(Widget footer);
  GForm build();
}

class FormBuilder implements GFormBuilder {
  final List<InputBase> _inputs = [];
  VoidCallback? _handler;
  String _submitText;
  final GlobalKey<FormState> formKey;
  Widget? _footer;

  FormBuilder({
    required this.formKey,
    String submitText = "Submit",
  }) : _submitText = submitText;

  @override
  GFormBuilder setSubmitHandler(VoidCallback submitHandler) {
    _handler = submitHandler;
    return this;
  }

  @override
  GFormBuilder addInputField(InputBase input) {
    _inputs.add(input);
    return this;
  }

  @override
  GForm build() {
    return GForm(
      inputs: _inputs,
      submitHandler: _handler,
      submitText: _submitText,
      formKey: formKey,
      footer: _footer,
    );
  }

  @override
  GFormBuilder setSubmitBtnText(String submitText) {
    _submitText = submitText;
    return this;
  }

  @override
  GFormBuilder addFooter(Widget footer) {
    _footer = footer;
    return this;
  }
}
