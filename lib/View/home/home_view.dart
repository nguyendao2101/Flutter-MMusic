import 'package:app_nghe_nhac/View/home/home_controller.dart';
import 'package:app_nghe_nhac/common/color_extension.dart';
import 'package:app_nghe_nhac/common_widget/playlist_cell.dart';
import 'package:app_nghe_nhac/common_widget/recomended_cell.dart';
import 'package:app_nghe_nhac/common_widget/songs_row.dart';
import 'package:app_nghe_nhac/common_widget/title_section.dart';
import 'package:app_nghe_nhac/common_widget/view_all_section.dart';
import 'package:app_nghe_nhac/images/images_extention.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final homeController = Get.put(HomeController());
    return Scaffold(
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
            SizedBox(
              height: 200,
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
                    onPressed: () {},
                  );
                }),
          ],
        ),
      ),
    );
  }
}
