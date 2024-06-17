import 'package:app_nghe_nhac/View/sings/sing_controller.dart';
import 'package:get/get.dart';

class SingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SingController());
  }
}
