// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:app_nghe_nhac/View/home/home_agruments.dart';
import 'package:app_nghe_nhac/View/home/home_controller.dart';
import 'package:app_nghe_nhac/common/color_extension.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class RecommendedCell extends StatefulWidget {
  final Map mObj;
  const RecommendedCell({
    Key? key,
    required this.mObj,
  }) : super(key: key);

  @override
  State<RecommendedCell> createState() => _RecommendedCellState();
}

class _RecommendedCellState extends State<RecommendedCell> {
  // final argument = Get.arguments as HomeAgruments;

  final homeController = Get.put(HomeController());

  // @override
  // void initState() {
  //   super.initState();
  //   homeController.getListALbum(302127);
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230,
      height: 210,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(9),
            child: Image.asset(
              widget.mObj['image'],
              width: double.maxFinite,
              height: 125,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            widget.mObj['name'],
            maxLines: 1,
            style: TextStyle(
                color: TColor.primaryText60,
                fontSize: 13,
                fontWeight: FontWeight.w700),
          ),
          Text(
            widget.mObj['artists'],
            maxLines: 1,
            style: TextStyle(
                color: TColor.secondaryText,
                fontSize: 10,
                fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }
}
