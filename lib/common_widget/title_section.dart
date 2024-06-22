// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/widgets.dart';

import 'package:app_nghe_nhac/common/color_extension.dart';

class TitleSection extends StatelessWidget {
  final String title;
  const TitleSection({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Text(
        title,
        style: TextStyle(
            color: TColor.primaryText80,
            fontSize: 15,
            fontWeight: FontWeight.w600),
      ),
    );
  }
}
