import 'package:get/get.dart';
import 'package:app_nghe_nhac/fearture/login/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController());
  }
}
