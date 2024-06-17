// ignore_for_file: file_names

import 'package:get/get.dart';

import 'package:app_nghe_nhac/fearture/signUp/signUp_controller.dart';

class SignUpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpController());
  }
}
