import 'package:app_nghe_nhac/View/home/home_controller.dart';
import 'package:app_nghe_nhac/View/songs/albums_detail.dart';
import 'package:app_nghe_nhac/common/color_extension.dart';
import 'package:app_nghe_nhac/common_widget/playlist_cell.dart';
import 'package:app_nghe_nhac/common_widget/recomended_cell.dart';
import 'package:app_nghe_nhac/common_widget/songs_row.dart';
import 'package:app_nghe_nhac/common_widget/title_section.dart';
import 'package:app_nghe_nhac/common_widget/view_all_section.dart';
import 'package:app_nghe_nhac/images/images_extention.dart';
import 'package:app_nghe_nhac/main_player/main_player_view.dart';
import 'package:app_nghe_nhac/model/chart_music/chart_music_response.dart';
import 'package:app_nghe_nhac/router/router.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    super.initState();
    final homeController = Get.put(HomeController());
    homeController.getListAlbum();
    homeController.getListChartMusic();
  }

  @override
  Widget build(BuildContext context) {
    final homeController = Get.find<HomeController>();

    return Obx(
      () => Scaffold(
        backgroundColor: TColor.bg,
        appBar: AppBar(
          backgroundColor: TColor.bg,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              homeController.openDrawer();
            },
            icon: Image.asset(
              ImagesAssset.menu,
              width: 25,
              height: 25,
              fit: BoxFit.contain,
            ),
          ),
          title: Row(
            children: [
              Expanded(
                child: Container(
                  height: 32,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      color: const Color(0xff292E4B),
                      borderRadius: BorderRadius.circular(19)),
                  child: TextField(
                    controller: homeController.txtSearch.value,
                    decoration: InputDecoration(
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          ImagesAssset.search,
                          height: 20,
                        ),
                      ),
                      hintText: 'Search album song',
                      hintStyle: TextStyle(
                        color: TColor.primaryText28,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TitleSection(title: 'Hot Recommended'),
              Obx(() {
                if (homeController.getListChartMusicStatus.value ==
                    GetListChartMusicStatus.isLoading) {
                  return const Center(child: CircularProgressIndicator());
                } else if (homeController.getListChartMusicStatus.value ==
                    GetListChartMusicStatus.loaded) {
                  return SizedBox(
                    height: 250, // Giới hạn chiều cao của ListView.builder
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: homeController.listChartMusic.length,
                      itemBuilder: (context, index) {
                        TrackDetailData track =
                            homeController.listChartMusic[index];
                        return GestureDetector(
                          onTap: () {
                            // Get.toNamed(AppRouterName.mainPlayer);
                            Get.to(const MainPlayerView());
                            // Get.to(const AlbumDetailsView());
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width *
                                0.7, // Điều chỉnh chiều rộng của phần tử
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                    track.album?.coverMedium ?? ''),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 10,
                                  right: 10,
                                  child: IconButton(
                                    icon: const Icon(Icons.play_arrow,
                                        color: Colors.white, size: 30),
                                    onPressed: () {
                                      // Code to play the track
                                    },
                                  ),
                                ),
                                Positioned(
                                  bottom: 0,
                                  left: 0,
                                  right: 0,
                                  child: Container(
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(0.5),
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10),
                                      ),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          track.title ?? 'Unknown Title',
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 16),
                                        ),
                                        Text(
                                          track.artist?.name ??
                                              'Unknown Artist',
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 14),
                                        ),
                                        Text(
                                          'Album: ${track.album?.title ?? 'Unknown Album'}',
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 14),
                                        ),
                                        Text(
                                          'Duration: ${track.duration ?? 0} seconds',
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 14),
                                        ),
                                        Text(
                                          'Rank: ${track.rank ?? 'N/A'}',
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 14),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  );
                } else {
                  return const Center(
                      child: Text('Failed to load music charts'));
                }
              }),
              const SizedBox(
                height: 16,
              ),
              Obx(() {
                if (homeController.getListChartMusicStatus.value ==
                    GetListChartMusicStatus.isLoading) {
                  return const Center(child: CircularProgressIndicator());
                } else if (homeController.getListChartMusicStatus.value ==
                    GetListChartMusicStatus.loaded) {
                  return SizedBox(
                    height: 250, // Giới hạn chiều cao của ListView.builder
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: homeController.listChartMusic.length,
                      itemBuilder: (context, index) {
                        TrackDetailData track =
                            homeController.listChartMusic[index];
                        return GestureDetector(
                          onTap: () {
                            Get.to(const AlbumDetailsView());
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width *
                                0.7, // Điều chỉnh chiều rộng của phần tử
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image:
                                    NetworkImage(track.artist?.picture ?? ''),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 10,
                                  right: 10,
                                  child: IconButton(
                                    icon: const Icon(Icons.play_arrow,
                                        color: Colors.white, size: 30),
                                    onPressed: () {
                                      // Code to play the track
                                    },
                                  ),
                                ),
                                Positioned(
                                  bottom: 0,
                                  left: 0,
                                  right: 0,
                                  child: Container(
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(0.5),
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10),
                                      ),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          'Album: ${track.album?.title ?? 'Unknown Album'}',
                                          style: TextStyle(
                                              color: TColor.primaryText60,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        Text(
                                          track.artist?.name ??
                                              'Unknown Artist',
                                          style: TextStyle(
                                              color: TColor.secondaryText,
                                              fontSize: 10,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  );
                } else {
                  return const Center(
                      child: Text('Failed to load music charts'));
                }
              }),
              SizedBox(
                height: 175,
                child: ListView.builder(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                    scrollDirection: Axis.horizontal,
                    itemCount: homeController.hostRecommendedArr.length,
                    itemBuilder: (context, index) {
                      var mObj = homeController.hostRecommendedArr[index];
                      return RecommendedCell(mObj: mObj);
                    }),
              ),
              Divider(
                color: Colors.white.withOpacity(0.07),
                indent: 20,
                endIndent: 20,
              ),
              ViewSection(title: 'PlayList', onPressed: () {}),
              SizedBox(
                height: 190,
                child: ListView.builder(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    scrollDirection: Axis.horizontal,
                    itemCount: homeController.playListArr.length,
                    itemBuilder: (context, index) {
                      var mObj = homeController.playListArr[index];
                      return PlaylistCell(mObj: mObj);
                    }),
              ),
              Divider(
                color: Colors.white.withOpacity(0.07),
                indent: 20,
                endIndent: 20,
              ),
              ViewSection(title: 'Recently Played', onPressed: () {}),
              ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  itemCount: homeController.recentlyPlayedArr.length,
                  itemBuilder: (context, index) {
                    var sObj = homeController.recentlyPlayedArr[index];
                    return SongsRow(
                      sObj: sObj,
                      onPressedPlay: () {},
                      onPressed: () {
                        // ignore: avoid_print
                        print('Navigating to main player');
                        Get.toNamed(AppRouterName.mainPlayer);
                      },
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
