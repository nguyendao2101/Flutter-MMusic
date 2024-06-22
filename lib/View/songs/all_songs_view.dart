import 'package:app_nghe_nhac/View/songs/songs_controller.dart';
import 'package:app_nghe_nhac/common/color_extension.dart';
import 'package:app_nghe_nhac/common_widget/all_song_row.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllSongsView extends StatefulWidget {
  const AllSongsView({super.key});

  @override
  State<AllSongsView> createState() => _AllSongsViewState();
}

class _AllSongsViewState extends State<AllSongsView> {
  @override
  Widget build(BuildContext context) {
    final allSongController = Get.put(SongsController());

    return Scaffold(
      backgroundColor: TColor.bg,
      body: Obx(
        () => ListView.builder(
            padding: const EdgeInsets.all(20),
            itemCount: allSongController.allSongsList.length,
            itemBuilder: (context, index) {
              var sObj = allSongController.allSongsList[index];
              return AllSongRow(
                  sObj: sObj, onPressed: () {}, onPressedPlay: () {});
            }),
      ),
    );
  }
}
