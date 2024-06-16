import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  late TextEditingController emailController = TextEditingController();
  late TextEditingController passwordController = TextEditingController();

  RxBool isObscured = true.obs;
  final formKey = GlobalKey<FormState>();
  final showPassword = false.obs;
  final isLoading = false.obs;

  void toggleObscureText() {
    isObscured.value = !isObscured.value;
  }

  void showHidePassword() {
    showPassword.value = !showPassword.value;
  }

  void onChangeEmail(String email) {
    formKey.currentState?.validate();
  }

  void onChangePassword(String password) {
    formKey.currentState?.validate();
  }

  bool containsSpecialCharacters(String text) {
    final allowedSpecialCharacters = RegExp(r'[!#\$%^&*(),?":{}|<>]');
    return allowedSpecialCharacters.hasMatch(text);
  }

  bool constainsUppercaseLetter(String text) {
    return RegExp(r'[A-Z]').hasMatch(text);
  }

  bool constainsLowercaseLetter(String text) {
    return RegExp(r'[a-z]').hasMatch(text);
  }

  bool constainsDigit(String text) {
    return RegExp(r'\d').hasMatch(text);
  }

  String? validatorEmail(String? email) {
    if ((email ?? '').isEmpty) {
      return 'Email không được để trống';
    } else if ((email ?? '').length < 6) {
      return 'Email không được nhỏ hơn 6 ký tự';
    } else if (containsSpecialCharacters(email!)) {
      return 'Email không đúng định dạng';
    } else {
      return null;
    }
  }

  String? validatorPassword(String? password) {
    if ((password ?? '').isEmpty) {
      return 'Password không được để trống';
    } else if ((password ?? '').length < 6) {
      return 'Password không được nhỏ hơn 6 ký tự';
    } else {
      return null;
    }
  }
}
