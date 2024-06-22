import 'package:app_nghe_nhac/View/home/home_controller.dart';
import 'package:app_nghe_nhac/View/setting/setting_view.dart';
import 'package:app_nghe_nhac/View/songs/songs_view.dart';
import 'package:app_nghe_nhac/common/color_extension.dart';
import 'package:app_nghe_nhac/View/home/home_view.dart';
import 'package:app_nghe_nhac/common_widget/icon_text_row.dart';
import 'package:app_nghe_nhac/images/images_extention.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  int selectTab = 0;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);

    tabController?.addListener(() {
      selectTab = tabController?.index ?? 0;
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    tabController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final homeController = Get.put(HomeController());

    var media = MediaQuery.sizeOf(context);

    return Scaffold(
      key: homeController.scaffoldKey,
      backgroundColor: Colors.transparent,
      drawer: Drawer(
          backgroundColor: TColor.bg,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              SizedBox(
                height: 200,
                child: DrawerHeader(
                  decoration: BoxDecoration(
                      color: TColor.primaryText.withOpacity(0.03)),
                  child: Column(
                    children: [
                      Image.asset(
                        ImagesAssset.logoApp,
                        width: media.width * 0.15,
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                '320\nSongs',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color(0xffC1C0C0), fontSize: 12),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                '52\nAlbums',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color(0xffC1C0C0), fontSize: 12),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                '87\nArtists',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color(0xffC1C0C0), fontSize: 12),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              IconTextRow(
                  title: 'Themes',
                  icon: ImagesAssset.mTheme,
                  onTap: () {
                    homeController.closeDrawer();
                  }),
              IconTextRow(
                  title: 'Ringtone Cutter',
                  icon: ImagesAssset.mRingCut,
                  onTap: () {
                    homeController.closeDrawer();
                  }),
              IconTextRow(
                  title: 'Sleep Timer',
                  icon: ImagesAssset.mSleepTimer,
                  onTap: () {
                    homeController.closeDrawer();
                  }),
              IconTextRow(
                  title: 'Equliser',
                  icon: ImagesAssset.sMenu,
                  onTap: () {
                    homeController.closeDrawer();
                  }),
              IconTextRow(
                  title: 'Driver Mode',
                  icon: ImagesAssset.mDriverMode,
                  onTap: () {
                    homeController.closeDrawer();
                  }),
              IconTextRow(
                  title: 'Hidden Folders',
                  icon: ImagesAssset.mHiddenFolder,
                  onTap: () {
                    homeController.closeDrawer();
                  }),
              IconTextRow(
                  title: 'Scan Media',
                  icon: ImagesAssset.mScanMedia,
                  onTap: () {
                    homeController.closeDrawer();
                  }),
            ],
          )),
      body: TabBarView(
        controller: tabController,
        children: const [HomeView(), SongView(), SettingView()],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: TColor.bg, boxShadow: const [
          BoxShadow(color: Colors.black38, blurRadius: 5, offset: Offset(0, -3))
        ]),
        child: BottomAppBar(
            color: Colors.transparent,
            elevation: 0,
            child: TabBar(
              controller: tabController,
              indicatorColor: Colors.transparent,
              indicatorWeight: 1,
              labelColor: TColor.primary,
              labelStyle: const TextStyle(fontSize: 10),
              unselectedLabelColor: TColor.primaryText28,
              unselectedLabelStyle: const TextStyle(fontSize: 10),
              tabs: [
                Tab(
                  text: 'Home',
                  icon: Image.asset(
                    selectTab == 0
                        ? ImagesAssset.hometab
                        : ImagesAssset.hometabUn,
                    width: 20,
                    height: 20,
                  ),
                ),
                Tab(
                  text: 'Songs',
                  icon: Image.asset(
                    selectTab == 1
                        ? ImagesAssset.songsTab
                        : ImagesAssset.songTabUn,
                    width: 20,
                    height: 20,
                  ),
                ),
                Tab(
                  text: 'Settings',
                  icon: Image.asset(
                    selectTab == 2
                        ? ImagesAssset.settingTabUn
                        : ImagesAssset.settingTab,
                    width: 20,
                    height: 20,
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
