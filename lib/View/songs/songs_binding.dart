import 'package:app_nghe_nhac/View/songs/songs_controller.dart';
import 'package:get/get.dart';

class SongBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SongsController());
  }
}
