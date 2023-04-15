import 'package:cipherschools/Data/data.dart';
import 'package:cipherschools/Utilities/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../Utilities/app_layout.dart';

class CreatorsCard extends StatefulWidget {
  const CreatorsCard({super.key});

  @override
  State<CreatorsCard> createState() => _CreatorsCardState();
}

class _CreatorsCardState extends State<CreatorsCard> {
  final creatorList = Data.creatorData;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Creators From",
          style: AppStyles.headerTextStyle.copyWith(fontSize: 26),
        ),
        SizedBox(
          height: AppLayout.getHeight(10),
        ),
        SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            scrollDirection: Axis.horizontal,
            child: Row(
              children: creatorList.map((path) => LogoImage(imgPath: path,)).toList()
            )),
      ],
    );
  }
}

class LogoImage extends StatelessWidget {
  const LogoImage({super.key, required this.imgPath});
  final String imgPath;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppLayout.getWidth(20)),
      height: AppLayout.getHeight(80),
      width: AppLayout.getWidth(200),
      decoration: BoxDecoration(),
      child: Image.network(imgPath),
    );
  }
}
