import 'package:app_nghe_nhac/View/home/home_controller.dart';
import 'package:app_nghe_nhac/View/songs/album_view.dart';
import 'package:app_nghe_nhac/View/songs/all_songs_view.dart';
import 'package:app_nghe_nhac/View/songs/play_list_view.dart';
import 'package:app_nghe_nhac/common/color_extension.dart';
import 'package:app_nghe_nhac/images/images_extention.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SongView extends StatefulWidget {
  const SongView({super.key});

  @override
  State<SongView> createState() => _SongViewState();
}

class _SongViewState extends State<SongView> with TickerProviderStateMixin {
  TabController? songtabController;
  int selectTab = 0;

  @override
  void initState() {
    super.initState();
    songtabController = TabController(length: 5, vsync: this);
    songtabController?.addListener(() {
      selectTab = songtabController?.index ?? 0;
      setState(() {});
    });
  }

  @override
  void dispose() {
    songtabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final homeController = Get.put(HomeController());

    return Scaffold(
      backgroundColor: TColor.bg,
      appBar: AppBar(
        backgroundColor: TColor.bg,
        elevation: 0,
        shadowColor: Colors.transparent, // loại bỏ shadow mặc định
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Songs',
              style: TextStyle(
                  fontSize: 17,
                  color: TColor.primaryText80,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              homeController.openDrawer();
            },
            icon: Image.asset(
              ImagesAssset.search,
              width: 25,
              height: 25,
              fit: BoxFit.contain,
              color: TColor.primaryText35,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: kToolbarHeight - 15,
            child: TabBar(
              controller: songtabController,
              indicatorColor: TColor.focus,
              indicatorPadding: const EdgeInsets.symmetric(horizontal: 20),
              isScrollable: true,
              labelStyle: TextStyle(
                  color: TColor.primaryText80,
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
              tabs: const [
                Tab(
                  text: 'All Songs',
                ),
                Tab(
                  text: 'Playlist',
                ),
                Tab(
                  text: 'Albums',
                ),
                Tab(
                  text: 'Artists',
                ),
                Tab(
                  text: 'Genres',
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: songtabController,
              children: [
                const AllSongsView(),
                const PlayListView(),
                const AlbumsView(),
                Center(
                  child: Text(
                    'Artists',
                    style: TextStyle(color: TColor.primaryText80),
                  ),
                ),
                Center(
                  child: Text(
                    'Genres',
                    style: TextStyle(color: TColor.primaryText80),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      // body: Center(
      //  child: Text('Setting', style: TextStyle(color: Colors.white)),
      // ),
    );
  }
}
