import 'package:flutter/material.dart';
import '../Utilities/app_layout.dart';
import '../Utilities/app_styles.dart';

class TopHeading extends StatelessWidget {
  const TopHeading({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Welcome to ",
                  style: AppStyles.headerTextStyle,
                ),
                Text(
                  "the ",
                  style: AppStyles.headerTextStyle
                      .copyWith(color: AppStyles.themeColor),
                ),
              ],
            ),
            SizedBox(
              height: AppLayout.getHeight(10),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Future ",
                  style: AppStyles.headerTextStyle
                      .copyWith(color: AppStyles.themeColor),
                ),
                Text(
                  "of Learning! ",
                  style: AppStyles.headerTextStyle,
                ),
              ],
            ),
            SizedBox(
              height: AppLayout.getHeight(15),
            ),
            Text(
              "Start Learning by best creators for",
              style: AppStyles.subHeaderTextStyle,
            ),
      ],
    );
  }
}