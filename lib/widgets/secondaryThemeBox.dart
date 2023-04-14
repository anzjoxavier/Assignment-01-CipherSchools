import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Utilities/app_layout.dart';
import '../Utilities/app_styles.dart';
import 'carouselSliderWithCustomIndicator.dart';
import 'constants/secondaryThemeCard.dart';

class SecondaryThemeBox extends StatelessWidget {
  const SecondaryThemeBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(10)),
      height: AppLayout.getHeight(580),
      width: AppLayout.getScreenWidth(),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: AppStyles.secondaryColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: AppLayout.getHeight(30),
          ),
          Text(
            "Students LIVE Feedback",
            style: AppStyles.subHeaderForBigSquare.copyWith(
                color: AppStyles.themeColor,
                fontSize: AppLayout.getHeight(18),
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: AppLayout.getHeight(20),
          ),
          Text(
            "We love to read them",
            style: AppStyles.headerForBigSquare.copyWith(
                fontSize: AppLayout.getHeight(28), fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: AppLayout.getHeight(20),
          ),
          Text(
            "feedback is a significant component of our success because it inspires us to get better and meet the expectations of our students.",
            style: AppStyles.subHeaderForBigSquare.copyWith(
              fontSize: AppLayout.getHeight(16),
            ),
          ),
          SizedBox(
            height: AppLayout.getHeight(30),
          ),
          SizedBox(
              height: AppLayout.getHeight(350),
              child: SecondaryThemeCarouselSlider())
        ],
      ),
    );
  }
}
