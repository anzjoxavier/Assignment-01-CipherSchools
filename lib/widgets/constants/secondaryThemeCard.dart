import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../Utilities/app_layout.dart';
import '../../Utilities/app_styles.dart';

class SecondaryThemeCard extends StatelessWidget {
  //Widget for making rating
  List<Widget> makeStar(int num) {
    List<Widget> starList = [];
    for (int i = 1; i <= 5; i++) {
      i <= num
          ? starList.add(Icon(
              CupertinoIcons.star_fill,
              size: 15,
              color: AppStyles.themeColor,
            ))
          : starList.add(Icon(
              CupertinoIcons.star,
              size: 15,
              color: AppStyles.themeColor,
            ));
      starList.add(
        SizedBox(
          width: AppLayout.getWidth(3),
        ),
      );
    }
    return (starList);
  }

  final String imgPath;
  final bool network;
  final String name;
  final String courseName;
  final String feedback;
  final int contentStarCount;
  final int mentorStarCount;
  final int platformStarCount;
  final int communityStarCount;
  const SecondaryThemeCard({super.key, required this.imgPath, required this.network, required this.name, required this.courseName, required this.feedback, required this.contentStarCount, required this.mentorStarCount, required this.platformStarCount, required this.communityStarCount});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      padding: EdgeInsets.all(AppLayout.getWidth(15)),
      height: AppLayout.getHeight(280),
      width: AppLayout.getWidth(355),
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.white,
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AppLayout.getHeight(40),
                width: AppLayout.getWidth(40),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image:network? DecorationImage(
                        image:NetworkImage(imgPath),):DecorationImage(
                        image:AssetImage(imgPath),)),
              ),
              SizedBox(
                width: AppLayout.getWidth(15),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name,
                      style: AppStyles.subHeaderForBigSquare.copyWith(
                          color: AppStyles.themeColor,
                          fontSize: AppLayout.getHeight(14),
                          fontWeight: FontWeight.w400)),
                  SizedBox(
                    height: AppLayout.getHeight(5),
                  ),
                  Text(courseName,
                  
               
                      style: AppStyles.subHeaderForBigSquare.copyWith(
                          color: Colors.black,
                          fontSize: AppLayout.getHeight(14),
                          fontWeight: FontWeight.w400))
                ],
              )
            ],
          ),
          SizedBox(
            height: AppLayout.getHeight(20),
          ),
          Text(
           feedback,
            style: AppStyles.subHeaderForBigSquare.copyWith(
                fontSize: AppLayout.getHeight(15), color: Colors.black),
          ),
          SizedBox(
            height: AppLayout.getHeight(20),
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    "Content:",
                    style: AppStyles.subHeaderForBigSquare.copyWith(
                        color: Colors.black,
                        fontSize: AppLayout.getHeight(14),
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: AppLayout.getHeight(5),
                  ),
                  Row(
                    children: makeStar(contentStarCount),
                  ),
                  SizedBox(
                    height: AppLayout.getHeight(5),
                  ),
                  Text(
                    "Platform:",
                    style: AppStyles.subHeaderForBigSquare.copyWith(
                        color: Colors.black,
                        fontSize: AppLayout.getHeight(14),
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: AppLayout.getHeight(5),
                  ),
                  Row(
                    children: makeStar(platformStarCount),
                  ),
                ],
              ),
              SizedBox(
                width: AppLayout.getWidth(90),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    "Mentor:",
                    style: AppStyles.subHeaderForBigSquare.copyWith(
                        color: Colors.black,
                        fontSize: AppLayout.getHeight(14),
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: AppLayout.getHeight(5),
                  ),
                  Row(
                    children: makeStar(mentorStarCount),
                  ),
                  SizedBox(
                    height: AppLayout.getHeight(5),
                  ),
                  Text(
                    "Community:",
                    style: AppStyles.subHeaderForBigSquare.copyWith(
                        color: Colors.black,
                        fontSize: AppLayout.getHeight(14),
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: AppLayout.getHeight(5),
                  ),
                  Row(
                    children: makeStar(communityStarCount),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
