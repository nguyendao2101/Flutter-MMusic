import 'package:app_nghe_nhac/fearture/SignUp/signUp_binding.dart';
import 'package:app_nghe_nhac/fearture/SignUp/signUp_view.dart';
import 'package:app_nghe_nhac/fearture/login/login_binding.dart';
import 'package:app_nghe_nhac/fearture/login/login_view.dart';
import 'package:get/get.dart';

class AppRouter {
  static final router = [
    GetPage(
      name: AppRouterName.login,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: AppRouterName.signup,
      page: () => const SignUpView(),
      binding: SignUpBinding(),
    )
  ];
}

class AppRouterName {
  static const login = '/login';
  static const signup = '/sign_up';
}
