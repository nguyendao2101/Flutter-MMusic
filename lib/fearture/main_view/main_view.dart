import 'package:app_nghe_nhac/View/Sings/sing_view.dart';
import 'package:app_nghe_nhac/View/setting/setting_view.dart';
import 'package:app_nghe_nhac/common/color_extension.dart';
import 'package:app_nghe_nhac/View/home/home_view.dart';
import 'package:app_nghe_nhac/images/images_extention.dart';

import 'package:flutter/material.dart';

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
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: TabBarView(
        controller: tabController,
        children: const [HomeView(), SingView(), SettingView()],
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
