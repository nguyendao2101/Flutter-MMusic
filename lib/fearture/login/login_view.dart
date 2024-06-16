import 'package:app_nghe_nhac/router/router.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app_nghe_nhac/fearture/login/login_controller.dart';
import 'package:app_nghe_nhac/images/images_extention.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<LoginController>();

    return Obx(
      () => Scaffold(
        backgroundColor: const Color(0xFF373A40),
        body: Stack(
          children: [
            SafeArea(
              child: SingleChildScrollView(
                child: Form(
                  key: controller.formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 64),
                      Center(
                        child: Image.asset(
                          ImagesAssset.logoSpotify,
                          height: 100,
                        ),
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'Hàng triệu bài hát.',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        'Miễn phí trên Spotify',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 32),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: TextFormField(
                          controller: controller.emailController,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Email',
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey.shade400),
                            ),
                            fillColor: Colors.grey.shade200,
                            filled: true,
                            hintText: 'Email',
                          ),
                          onChanged: controller.onChangeEmail,
                          validator: controller.validatorEmail,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: TextFormField(
                          controller: controller.passwordController,
                          obscureText: controller.isObscured.value,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey.shade400),
                            ),
                            fillColor: Colors.grey.shade200,
                            filled: true,
                            hintText: 'Password',
                            suffixIcon: IconButton(
                              icon: Icon(
                                controller.isObscured.value
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                              onPressed: controller.toggleObscureText,
                            ),
                          ),
                          onChanged: controller.onChangePassword,
                          validator: controller.validatorPassword,
                        ),
                      ),
                      const SizedBox(height: 4),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Quên mật khẩu?',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 32),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              // if (controller.formKey.currentState?.validate() ==
                              //     true) {
                              //   // Handle login logic here
                              // }
                            },
                            child: const Text('Sign In'),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Get.toNamed(AppRouterName.signup);
                            },
                            child: const Text('Sign Up'),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            ImagesAssset.logoGoogle,
                            height: 70,
                          ),
                          const SizedBox(width: 16),
                          Image.asset(
                            ImagesAssset.logoApple,
                            height: 70,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            if (controller.isLoading.value)
              const Center(
                child: CircularProgressIndicator(),
              ),
          ],
        ),
      ),
    );
  }
}
