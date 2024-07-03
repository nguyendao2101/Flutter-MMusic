import 'package:app_nghe_nhac/View/songs/albums_detail.dart';
import 'package:app_nghe_nhac/View/songs/songs_controller.dart';
import 'package:app_nghe_nhac/common/color_extension.dart';
import 'package:app_nghe_nhac/common_widget/album_cell.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AlbumsView extends StatefulWidget {
  const AlbumsView({super.key});

  @override
  State<AlbumsView> createState() => _AlbumsViewState();
}

class _AlbumsViewState extends State<AlbumsView> {
  final albumsController = Get.put(SongsController());

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    var cellWidth = (media.width - 40.0 - 20.0) * 0.5;
    return Scaffold(
      backgroundColor: TColor.bg,
      body: Obx(
        () => GridView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: cellWidth / (cellWidth + 60.0),
              crossAxisSpacing: 20,
              mainAxisSpacing: 10),
          itemCount: albumsController.allAlbumList.length,
          itemBuilder: (context, index) {
            var aObj = albumsController.allAlbumList[index];
            return AlbumCell(
              aObj: aObj,
              onPressed: () {
                Get.to(const AlbumDetailsView());
              },
              onPressedMenu: (selecIndex) {
                if (kDebugMode) {
                  print(index);
                }
              },
            );
          },
        ),
      ),
    );
  }
}
