import 'package:app_nghe_nhac/fearture/SignUp/signUp_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<SignUpController>();
    final textEditingControllers = TextEditingControllers();

    return Scaffold(
      backgroundColor: const Color(0xFF373A40),
      body: SafeArea(
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
                    color: Colors.white),
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
                  obscureText: controller.isObscured
                      .value, // Sử dụng giá trị từ controller để ẩn hoặc hiện mật khẩu
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
                      onTap: () {
                        controller
                            .toggleObscureText(); // Khi người dùng nhấn vào biểu tượng, toggleObscureText được gọi để thay đổi trạng thái ẩn/hiện mật khẩu
                      },
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
                    labelText: 'Entry your Password',
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade400),
                    ),
                    fillColor: Colors.grey.shade200,
                    filled: true,
                    hintText: 'Entry your Password',
                    suffixIcon: GestureDetector(
                      onTap: () {
                        controller.toggleEntryPasswordObscureText();
                      },
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
                  //gioi tinh
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
                          borderSide: BorderSide(color: Colors.grey.shade400),
                        ),
                        fillColor: Colors.grey.shade200,
                        filled: true,
                        hintText: 'Sex',
                      ),
                      onChanged: controller.onChangeCheckSex,
                      validator: controller.validatorCheck,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  // dia chi
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
                          borderSide: BorderSide(color: Colors.grey.shade400),
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
                // Add your sign up logic here
              },
              child: const Text('Sign Up'),
            ),
          ],
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
}
