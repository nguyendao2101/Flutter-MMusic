// ignore: file_names
import 'package:app_nghe_nhac/fearture/SignUp/signUp_controller.dart';
import 'package:get/get.dart';

class SignUpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignUpController>(() => SignUpController());
  }
}
