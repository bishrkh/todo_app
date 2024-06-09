import 'package:flutter/material.dart';
import 'package:todo_app/generated/l10n.dart';

class TextFieldsValidator {
  static late BuildContext context;

  static String? nameValidator(String? first) {
    if (first != null && first.isNotEmpty) {
      return null;
    } else {
      return S.of(context).required;
    }
  }

  static String? passwordValidator(String? password) {
    if (password!.isNotEmpty && password.length >= 8) {
      return null;
    } else if (password.isEmpty) {
      return S.of(context).required;
    } else {
      return S.of(context).requires8Characters;
    }
  }
}
