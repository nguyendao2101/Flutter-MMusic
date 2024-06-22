import 'package:app_nghe_nhac/View/home/home_controller.dart';
import 'package:app_nghe_nhac/common/color_extension.dart';
import 'package:app_nghe_nhac/common_widget/icon_text_row.dart';
import 'package:app_nghe_nhac/images/images_extention.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingView extends StatefulWidget {
  const SettingView({super.key});

  @override
  State<SettingView> createState() => _SettingViewState();
}

class _SettingViewState extends State<SettingView> {
  final homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
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
                'Settings',
                style: TextStyle(
                    fontSize: 17,
                    color: TColor.primaryText80,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
        body: ListView(
          children: [
            IconTextRow(
                title: 'Dispalay',
                icon: ImagesAssset.sDisplay,
                onTap: () {
                  homeController.closeDrawer();
                }),
            IconTextRow(
                title: 'Audio',
                icon: ImagesAssset.sAudio,
                onTap: () {
                  homeController.closeDrawer();
                }),
            IconTextRow(
                title: 'HeadSet',
                icon: ImagesAssset.sHeadset,
                onTap: () {
                  homeController.closeDrawer();
                }),
            IconTextRow(
                title: 'Lock Screen',
                icon: ImagesAssset.sLockScreen,
                onTap: () {
                  homeController.closeDrawer();
                }),
            IconTextRow(
                title: 'Advanced',
                icon: ImagesAssset.sMenu,
                onTap: () {
                  homeController.closeDrawer();
                }),
            IconTextRow(
                title: 'Other',
                icon: ImagesAssset.sOther,
                onTap: () {
                  homeController.closeDrawer();
                }),
          ],
        ));
  }
}
