import 'package:app_nghe_nhac/View/songs/songs_controller.dart';
import 'package:app_nghe_nhac/common/color_extension.dart';
import 'package:app_nghe_nhac/common_widget/my_playlist_cell.dart';
import 'package:app_nghe_nhac/common_widget/playlist_songs_cell.dart';
import 'package:app_nghe_nhac/common_widget/view_all_section.dart';
import 'package:app_nghe_nhac/images/images_extention.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PlayListView extends StatefulWidget {
  const PlayListView({super.key});

  @override
  State<PlayListView> createState() => _PlayListViewState();
}

class _PlayListViewState extends State<PlayListView> {
  // ignore: non_constant_identifier_names
  final PlayListController = Get.put(SongsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColor.bg,
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff23273B),
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Image.asset(ImagesAssset.add),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Obx(
              () => GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(vertical: 20),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.4,
                  crossAxisSpacing: 0,
                  mainAxisSpacing: 0,
                ),
                itemCount: PlayListController.playlistArr.length,
                itemBuilder: (context, index) {
                  var pObj = PlayListController.playlistArr[index];
                  return PlaylistSongsCell(
                      pObj: pObj, onPressed: () {}, onPressedPlay: () {});
                },
              ),
            ),
            ViewSection(title: "My Playlists", onPressed: () {}),
            SizedBox(
              height: 150,
              child: Obx(
                () => ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    itemCount: PlayListController.myPlaylistArr.length,
                    itemBuilder: (context, index) {
                      var pObj = PlayListController.myPlaylistArr[index];

                      return MyPlaylistCell(
                        sObj: pObj,
                        onPressed: () {},
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
