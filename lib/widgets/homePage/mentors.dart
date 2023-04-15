import 'package:carousel_slider/carousel_slider.dart';
import 'package:cipherschools/Utilities/app_styles.dart';
import 'package:cipherschools/widgets/constants/mentorCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../Data/data.dart';
import '../../Utilities/app_layout.dart';

class ExpertMentors extends StatefulWidget {
  const ExpertMentors({super.key});

  @override
  State<ExpertMentors> createState() => _ExpertMentorsState();
}

class _ExpertMentorsState extends State<ExpertMentors> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        Text(
          "Our Expert Mentors",
          style: AppStyles.headerTextStyle
              .copyWith(fontSize: AppLayout.getHeight(26)),
        ),
        CarouselSlider.builder(
            itemCount: Data.mentorList.length,
            options: CarouselOptions(
              autoPlay: true,
              height: AppLayout.getHeight(350),
              viewportFraction: 0.8,
            ),
            itemBuilder: (context, index, value) => MentorCard(
                      imgPath: Data.mentorList[index][0], name: Data.mentorList[index][1], company: Data.mentorList[index][2]))
      ]),
    );
  }
}
