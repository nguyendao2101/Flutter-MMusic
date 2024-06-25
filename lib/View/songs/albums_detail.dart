import 'dart:ui';

import 'package:app_nghe_nhac/View/home/home_controller.dart';
import 'package:app_nghe_nhac/View/songs/songs_controller.dart';
import 'package:app_nghe_nhac/common/color_extension.dart';
import 'package:app_nghe_nhac/common_widget/album_songs_row.dart';
import 'package:app_nghe_nhac/images/images_extention.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AlbumDetailsView extends StatefulWidget {
  const AlbumDetailsView({super.key});

  @override
  State<AlbumDetailsView> createState() => _AlbumDetailsViewState();
}

class _AlbumDetailsViewState extends State<AlbumDetailsView> {
  final albumDetailController = Get.put(SongsController());
  final albumDetailHomeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: TColor.bg,
      appBar: AppBar(
        backgroundColor: TColor.bg,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Image.asset(
            ImagesAssset.back,
            width: 25,
            height: 25,
            fit: BoxFit.contain,
          ),
        ),
        title: Text(
          "Album Details",
          style: TextStyle(
              color: TColor.primaryText80,
              fontSize: 17,
              fontWeight: FontWeight.w600),
        ),
        actions: [
          IconButton(
            onPressed: () {
              albumDetailHomeController.openDrawer();
            },
            icon: Image.asset(
              ImagesAssset.search,
              width: 20,
              height: 20,
              fit: BoxFit.contain,
              color: TColor.primaryText35,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  ClipRect(
                    child: ImageFiltered(
                      imageFilter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                      child: Image.asset(
                        ImagesAssset.album1,
                        width: double.maxFinite,
                        height: media.width * 0.5,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.black54,
                    width: double.maxFinite,
                    height: media.width * 0.5,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              ImagesAssset.album1,
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Expanded(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "History",
                                  style: TextStyle(
                                      color:
                                          TColor.primaryText.withOpacity(0.9),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "by Michael Jackson",
                                  style: TextStyle(
                                      color:
                                          TColor.primaryText.withOpacity(0.74),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "1996  .  18 Songs  .  64 min",
                                  style: TextStyle(
                                      color:
                                          TColor.primaryText.withOpacity(0.74),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ))
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              borderRadius: BorderRadius.circular(17.5),
                              onTap: () {},
                              child: Container(
                                width: 70,
                                height: 25,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: TColor.primaryG,
                                    begin: Alignment.topCenter,
                                    end: Alignment.center,
                                  ),
                                  borderRadius: BorderRadius.circular(17.5),
                                ),
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Image.asset(
                                      ImagesAssset.playN,
                                      width: 12,
                                      height: 12,
                                      fit: BoxFit.contain,
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      "Play",
                                      style: TextStyle(
                                          color: TColor.primaryText
                                              .withOpacity(0.74),
                                          fontSize: 8,
                                          fontWeight: FontWeight.w600),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              borderRadius: BorderRadius.circular(17.5),
                              onTap: () {},
                              child: Container(
                                width: 70,
                                height: 25,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: TColor.primaryText, width: 1),
                                  borderRadius: BorderRadius.circular(17.5),
                                ),
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Image.asset(
                                      ImagesAssset.share,
                                      width: 12,
                                      height: 12,
                                      fit: BoxFit.contain,
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      "Share",
                                      style: TextStyle(
                                          color: TColor.primaryText
                                              .withOpacity(0.74),
                                          fontSize: 8,
                                          fontWeight: FontWeight.w600),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              borderRadius: BorderRadius.circular(17.5),
                              onTap: () {},
                              child: Container(
                                width: 120,
                                height: 25,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: TColor.primaryText, width: 1),
                                  borderRadius: BorderRadius.circular(17.5),
                                ),
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Image.asset(
                                      ImagesAssset.fav,
                                      width: 12,
                                      height: 12,
                                      fit: BoxFit.contain,
                                      color: TColor.primaryText,
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      "Add to Favorites",
                                      style: TextStyle(
                                          color: TColor.primaryText
                                              .withOpacity(0.74),
                                          fontSize: 8,
                                          fontWeight: FontWeight.w600),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  itemCount: albumDetailController.playedAlbumArr.length,
                  itemBuilder: (context, index) {
                    var sObj = albumDetailController.playedAlbumArr[index];
                    return AlbumSongRow(
                      sObj: sObj,
                      onPressed: () {},
                      onPressedPlay: () {},
                      isPlay: index == 0,
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
