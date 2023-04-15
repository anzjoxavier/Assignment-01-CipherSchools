import 'package:carousel_slider/carousel_slider.dart';
import 'package:cipherschools/Utilities/app_styles.dart';
import 'package:cipherschools/widgets/constants/secondaryThemeCard.dart';
import 'package:flutter/material.dart';

import '../../Data/data.dart';
import '../../Utilities/app_layout.dart';

class SecondaryThemeCarouselSlider extends StatefulWidget {
  const SecondaryThemeCarouselSlider({super.key});

  @override
  State<StatefulWidget> createState() {
    return SecondaryThemeCarouselSliderState();
  }
}

class SecondaryThemeCarouselSliderState
    extends State<SecondaryThemeCarouselSlider> {
  int currentPos = 0;
  final feedbackList = Data.data;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: AppStyles.secondaryColor),
      child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        CarouselSlider.builder(
          itemCount: feedbackList.length,
          options: CarouselOptions(
              height: AppLayout.getHeight(300),
              viewportFraction: 0.98,
              autoPlay: true,
              onPageChanged: (index, reason) {
                setState(() {
                  currentPos = index;
                });
              }),
          itemBuilder: (context, index, value) {
            return SecondaryThemeCard(
                imgPath: feedbackList[index]["imgPath"],
                network: feedbackList[index]["network"],
                name: feedbackList[index]["name"],
                courseName: feedbackList[index]["courseName"],
                feedback: feedbackList[index]["feedback"],
                contentStarCount: feedbackList[index]["contentStarCount"],
                mentorStarCount: feedbackList[index]["mentorStarCount"],
                platformStarCount: feedbackList[index]["platformStarCount"],
                communityStarCount: feedbackList[index]["communityStarCount"]);
          },
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: feedbackList.map((value) {
            int index = feedbackList.indexOf(value);
            return Container(
              width: 16,
              height: 4,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10),
                color: currentPos == index
                    ? AppStyles.themeColor
                    : Colors.white,
              ),
            );
          }).toList(),
        ),
      ])),
    );
  }
}
