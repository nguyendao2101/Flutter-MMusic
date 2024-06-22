// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:app_nghe_nhac/common/color_extension.dart';

class ViewSection extends StatelessWidget {
  final String title;
  final String buttonTitle;
  final VoidCallback onPressed;
  const ViewSection({
    Key? key,
    required this.title,
    this.buttonTitle = 'View All',
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: TextStyle(
                  color: TColor.primaryText80,
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            ),
          ),
          TextButton(
            onPressed: onPressed,
            child: Text(buttonTitle,
                style: TextStyle(
                  color: TColor.org,
                  fontSize: 11,
                )),
          )
        ],
      ),
    );
  }
}
