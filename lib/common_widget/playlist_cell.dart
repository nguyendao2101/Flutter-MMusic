// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:app_nghe_nhac/common/color_extension.dart';
import 'package:flutter/widgets.dart';

class PlaylistCell extends StatelessWidget {
  final Map mObj;
  const PlaylistCell({
    Key? key,
    required this.mObj,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 100,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(9),
            child: Image.asset(
              mObj['image'],
              width: double.maxFinite,
              height: 110,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            mObj['name'],
            maxLines: 1,
            style: TextStyle(
                color: TColor.primaryText60,
                fontSize: 13,
                fontWeight: FontWeight.w700),
          ),
          Text(
            mObj['artists'],
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
