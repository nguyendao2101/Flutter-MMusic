import 'package:app_nghe_nhac/main_player/main_player_controller.dart';
import 'package:get/get.dart';

class MainPlayerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MainPlayerController());
  }
}
