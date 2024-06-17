import 'package:app_nghe_nhac/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app_nghe_nhac/fearture/login/login_binding.dart';
import 'package:app_nghe_nhac/fearture/login/login_view.dart';
import 'package:app_nghe_nhac/router/router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
