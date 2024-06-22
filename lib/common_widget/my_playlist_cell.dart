import 'package:flutter/material.dart';
import '../common/color_extension.dart';

class MyPlaylistCell extends StatelessWidget {
  final Map sObj;
  final VoidCallback onPressed;
  const MyPlaylistCell({
    super.key,
    required this.sObj,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      width: 90,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  sObj["image"],
                  width: 90,
                  height: 80,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                width: 90,
                height: 80,
                decoration: BoxDecoration(
                  border: Border.all(color: TColor.primaryText28),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            sObj["name"],
            maxLines: 1,
            style: TextStyle(
                color: TColor.primaryText60,
                fontSize: 12,
                fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
