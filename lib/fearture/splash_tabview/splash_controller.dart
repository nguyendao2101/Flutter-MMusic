import 'package:app_nghe_nhac/router/router.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  void loadView() async {
    await Future.delayed(const Duration(seconds: 3));
    Get.toNamed(AppRouterName.main);
  }
}
