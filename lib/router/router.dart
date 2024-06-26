import 'package:app_nghe_nhac/View/setting/setting_binding.dart';
import 'package:app_nghe_nhac/View/setting/setting_view.dart';
import 'package:app_nghe_nhac/View/songs/songs_binding.dart';
import 'package:app_nghe_nhac/View/songs/songs_view.dart';
import 'package:app_nghe_nhac/View/home/home_binding.dart';
import 'package:app_nghe_nhac/View/home/home_view.dart';
import 'package:app_nghe_nhac/fearture/main_view/main_view.dart';
import 'package:app_nghe_nhac/fearture/signUp/signUp_binding.dart';
import 'package:app_nghe_nhac/fearture/signUp/signUp_view.dart';
import 'package:app_nghe_nhac/fearture/main_view/main_binding.dart';
import 'package:app_nghe_nhac/fearture/login/login_binding.dart';
import 'package:app_nghe_nhac/fearture/login/login_view.dart';
import 'package:app_nghe_nhac/fearture/splash_tabview/splash_binding.dart';
import 'package:app_nghe_nhac/fearture/splash_tabview/splash_view.dart';
import 'package:app_nghe_nhac/main_player/main_player_binding.dart';
import 'package:app_nghe_nhac/main_player/main_player_view.dart';
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
    ),
    GetPage(
      name: AppRouterName.main,
      page: () => MainView(),
      binding: MainBinding(),
    ),
    GetPage(
      name: AppRouterName.splash,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: AppRouterName.home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRouterName.songs,
      page: () => const SongView(),
      binding: SongBinding(),
    ),
    GetPage(
      name: AppRouterName.setting,
      page: () => const SettingView(),
      binding: SettingBinding(),
    ),
    GetPage(
      name: AppRouterName.mainPlayer,
      page: () => const MainPlayerView(),
      binding: MainPlayerBinding(),
    ),
  ];
}

class AppRouterName {
  static const login = '/login';
  static const signup = '/sign_up';
  static const main = '/main';
  static const splash = '/splash';
  static const home = '/home';
  static const songs = '/songs';
  static const setting = '/setting';
  static const mainPlayer = '/mainPlayer';
}
