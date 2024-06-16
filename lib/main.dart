import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app_nghe_nhac/fearture/login/login_binding.dart';
import 'package:app_nghe_nhac/fearture/login/login_view.dart';
import 'package:app_nghe_nhac/router/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: LoginBinding(),
      getPages: AppRouter.router,
      home: const LoginView(),
    );
  }
}
