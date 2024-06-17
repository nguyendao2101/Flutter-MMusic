import 'package:app_nghe_nhac/View/home/home_controller.dart';
import 'package:app_nghe_nhac/common/color_extension.dart';
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
          onPressed: () {},
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
                    color: Color(0xff292E4B),
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
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                'Hot Recommended',
                style: TextStyle(
                    color: TColor.primaryText80,
                    fontSize: 15,
                    fontWeight: FontWeight.w600),
              ),
            )
          ],
        ),
      ),
    );
  }
}
