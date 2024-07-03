// ignore_for_file: file_names

import 'package:app_nghe_nhac/View/songs/songs_controller.dart';
import 'package:app_nghe_nhac/common_widget/all_song_row.dart';
import 'package:app_nghe_nhac/images/images_extention.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

import '../../common/color_extension.dart';

class PlayPlayListView extends StatefulWidget {
  const PlayPlayListView({super.key});

  @override
  State<PlayPlayListView> createState() => _PlayPlayListViewState();
}

class _PlayPlayListViewState extends State<PlayPlayListView> {
  final allVM = Get.put(SongsController());

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
          "Playlist",
          style: TextStyle(
              color: TColor.primaryText80,
              fontSize: 17,
              fontWeight: FontWeight.w600),
        ),
        actions: [
          PopupMenuButton<int>(
              color: const Color(0xff383B49),
              offset: const Offset(-10, 15),
              elevation: 1,
              icon: Image.asset(
                ImagesAssset.moreBtn,
                width: 20,
                height: 20,
                color: Colors.white,
              ),
              padding: EdgeInsets.zero,
              onSelected: (selectIndex) {},
              itemBuilder: (context) {
                return [
                  const PopupMenuItem(
                    value: 1,
                    height: 30,
                    child: Text(
                      "Social Share",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  const PopupMenuItem(
                    value: 2,
                    height: 30,
                    child: Text(
                      "Playing Queue",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  const PopupMenuItem(
                    value: 3,
                    height: 30,
                    child: Text(
                      "Add to playlist...",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  const PopupMenuItem(
                    value: 4,
                    height: 30,
                    child: Text(
                      "Lyrics",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  const PopupMenuItem(
                    value: 5,
                    height: 30,
                    child: Text(
                      "Volume",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  const PopupMenuItem(
                    value: 6,
                    height: 30,
                    child: Text(
                      "Details",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  const PopupMenuItem(
                    value: 7,
                    height: 30,
                    child: Text(
                      "Sleep timer",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  const PopupMenuItem(
                    value: 8,
                    height: 30,
                    child: Text(
                      "Equaliser",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  const PopupMenuItem(
                    value: 9,
                    height: 30,
                    child: Text(
                      "Driver mode",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ];
              }),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 45,
                  height: 45,
                  child: IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      ImagesAssset.previousSong,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(media.width * 0.4),
                      child: Image.asset(
                        ImagesAssset.playerImage,
                        width: media.width * 0.4,
                        height: media.width * 0.4,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: media.width * 0.4,
                      height: media.width * 0.4,
                      child: SleekCircularSlider(
                        appearance: CircularSliderAppearance(
                            customWidths: CustomSliderWidths(
                                trackWidth: 2,
                                progressBarWidth: 4,
                                shadowWidth: 6),
                            customColors: CustomSliderColors(
                                dotColor: const Color(0xffFFB1B2),
                                trackColor:
                                    const Color(0xffffffff).withOpacity(0.3),
                                progressBarColors: [
                                  const Color(0xffFB9967),
                                  const Color(0xffE9585A)
                                ],
                                shadowColor: const Color(0xffFFB1B2),
                                shadowMaxOpacity: 0.05),
                            infoProperties: InfoProperties(
                              topLabelStyle: const TextStyle(
                                  color: Colors.transparent,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                              topLabelText: 'Elapsed',
                              bottomLabelStyle: const TextStyle(
                                  color: Colors.transparent,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                              bottomLabelText: 'time',
                              mainLabelStyle: const TextStyle(
                                  color: Colors.transparent,
                                  fontSize: 50.0,
                                  fontWeight: FontWeight.w600),
                              // modifier: (double value) {
                              //   final time = printDuration(Duration(seconds: value.toInt()));
                              //   return '$time';
                              // }
                            ),
                            startAngle: 270,
                            angleRange: 360,
                            size: 350.0),
                        min: 0,
                        max: 100,
                        initialValue: 60,
                        onChange: (double value) {
                          // callback providing a value while its being changed (with a pan gesture)
                        },
                        onChangeStart: (double startValue) {
                          // callback providing a starting value (when a pan gesture starts)
                        },
                        onChangeEnd: (double endValue) {
                          // ucallback providing an ending value (when a pan gesture ends)
                        },
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  width: 15,
                ),
                SizedBox(
                  width: 45,
                  height: 45,
                  child: IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      ImagesAssset.nextSong,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "3:15|4:26",
              style: TextStyle(color: TColor.primaryText80, fontSize: 12),
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              "Black or White",
              style: TextStyle(
                  color: TColor.primaryText.withOpacity(0.9),
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Michael Jackson • Album - Dangerous",
              style: TextStyle(color: TColor.primaryText80, fontSize: 12),
            ),
            Obx(
              () => ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(20),
                  itemCount: allVM.allSongsList.length,
                  itemBuilder: (context, index) {
                    var sObj = allVM.allSongsList[index];

                    return AllSongRow(
                      sObj: sObj,
                      onPressed: () {},
                      onPressedPlay: () {},
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
