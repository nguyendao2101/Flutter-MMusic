// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:app_nghe_nhac/fearture/signUp/signUp_controller.dart';
import 'package:app_nghe_nhac/router/router.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());

    final textEditingControllers = TextEditingControllers();

    return Scaffold(
      backgroundColor: const Color(0xFF373A40),
      body: SafeArea(
        child: Form(
          key: controller.formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 64),
                const Center(
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 32),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextFormField(
                    controller: textEditingControllers.email,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400),
                      ),
                      fillColor: Colors.grey.shade200,
                      filled: true,
                      hintText: 'Email',
                      suffixIcon: const Icon(Icons.email),
                    ),
                    onChanged: controller.onChangeUsername,
                    validator: controller.validatorUsername,
                  ),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Obx(
                    () => TextFormField(
                      controller: textEditingControllers.passWord,
                      obscureText: controller.isObscured.value,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade400),
                        ),
                        fillColor: Colors.grey.shade200,
                        filled: true,
                        hintText: 'Password',
                        suffixIcon: GestureDetector(
                          onTap: controller.toggleObscureText,
                          child: Icon(controller.isObscured.value
                              ? Icons.visibility_off
                              : Icons.visibility),
                        ),
                      ),
                      onChanged: controller.onChangePassword,
                      validator: controller.validatorPassword,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Obx(
                    () => TextFormField(
                      controller: textEditingControllers.entryPassword,
                      obscureText: controller.isEntryPasswordObscured.value,
                      decoration: InputDecoration(
                        labelText: 'Confirm Password',
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade400),
                        ),
                        fillColor: Colors.grey.shade200,
                        filled: true,
                        hintText: 'Confirm Password',
                        suffixIcon: GestureDetector(
                          onTap: controller.toggleEntryPasswordObscureText,
                          child: Icon(controller.isEntryPasswordObscured.value
                              ? Icons.visibility_off
                              : Icons.visibility),
                        ),
                      ),
                      onChanged: controller.onChangeConfirmPassword,
                      validator: controller.validatorConfirmPassword,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: TextFormField(
                    controller: textEditingControllers.hoTen,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'Full Name',
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400),
                      ),
                      fillColor: Colors.grey.shade200,
                      filled: true,
                      hintText: 'Full Name',
                    ),
                    onChanged: controller.onChangeCheckName,
                    validator: controller.validatorCheck,
                  ),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: textEditingControllers.sex,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Sex',
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey.shade400),
                            ),
                            fillColor: Colors.grey.shade200,
                            filled: true,
                            hintText: 'Sex',
                          ),
                          onChanged: controller.onChangeCheckSex,
                          validator: controller.validatorCheck,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: TextFormField(
                          controller: textEditingControllers.addRess,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Address',
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey.shade400),
                            ),
                            fillColor: Colors.grey.shade200,
                            filled: true,
                            hintText: 'Address',
                          ),
                          onChanged: controller.onChangeCheckAdress,
                          validator: controller.validatorCheck,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 28),
                ElevatedButton(
                  onPressed: () {
                    if (controller.formKey.currentState?.validate() ?? false) {
                      controller.signUp(
                        textEditingControllers.email.text,
                        textEditingControllers.passWord.text,
                        textEditingControllers.entryPassword.text,
                        textEditingControllers.hoTen.text,
                        textEditingControllers.addRess.text,
                        textEditingControllers.sex.text,
                        () {
                          Get.offAllNamed(AppRouterName.login);
                        },
                      );
                    }
                  },
                  child: const Text('Sign Up'),
                ),
                ElevatedButton(
                    onPressed: () {
                      Get.toNamed(AppRouterName.login);
                    },
                    child: const Text('hello'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TextEditingControllers {
  final TextEditingController email = TextEditingController();
  final TextEditingController passWord = TextEditingController();
  final TextEditingController entryPassword = TextEditingController();
  final TextEditingController hoTen = TextEditingController();
  final TextEditingController addRess = TextEditingController();
  final TextEditingController sex = TextEditingController();

  void dispose() {
    email.dispose();
    passWord.dispose();
    entryPassword.dispose();
    hoTen.dispose();
    addRess.dispose();
    sex.dispose();
  }
}
