import 'package:cipherschools/Utilities/app_layout.dart';
import 'package:cipherschools/Utilities/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class GridCard extends StatelessWidget {
   GridCard(
      {super.key,
      required this.imagPath,
      required this.category,
      required this.courseName,
      required this.noOfVideos,
      required this.noOfHours,
      required this.intructorName,
      required this.instructorImgPath,
      this.cardColor=Colors.white,
      this.textColor=Colors.black,
      });

  final String imagPath;
  final String category;
  final String courseName;
  final int noOfVideos;
  final double noOfHours;
  final String intructorName;
  final String instructorImgPath;
  Color cardColor = Colors.white;
  Color textColor = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      height: AppLayout.getHeight(240),
      width: AppLayout.getWidth(180),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 10,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: AppLayout.getHeight(100),
              width: AppLayout.getWidth(181),
              child: Image.asset(
                imagPath,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: AppLayout.getHeight(10),
            ),
            Container(
              height: AppLayout.getHeight(20),
              width: AppLayout.getWidth(120),
              padding: EdgeInsets.all(AppLayout.getWidth(3)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(AppLayout.getWidth(3)),
                      bottomRight: Radius.circular(AppLayout.getWidth(3))),
                  color: Colors.orange.withOpacity(0.3)),
              child: Center(
                  child: Text(
                category,
                style: TextStyle(
                    color: Colors.orange, fontSize: AppLayout.getWidth(12)),
                overflow: TextOverflow.ellipsis,
              )),
            ),
            Padding(
              padding: EdgeInsets.all(AppLayout.getWidth(8)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    courseName,
                    style: AppStyles.headerForGridCard.copyWith(color:textColor),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: AppLayout.getHeight(3),
                  ),
                  Row(
                    children: [
                      Text("No. of videos: ",
                          style: AppStyles.subHeaderForGridCard.copyWith(color: textColor),
                          overflow: TextOverflow.ellipsis),
                      Text(noOfVideos.toString(),
                          style: AppStyles.subHeaderForGridCard
                              .copyWith(fontWeight: FontWeight.w400,color: textColor),
                          overflow: TextOverflow.ellipsis),
                    ],
                  ),
                  SizedBox(
                    height: AppLayout.getHeight(3),
                  ),
                  Row(
                    children: [
                      Text("Course time: ",
                          style: AppStyles.subHeaderForGridCard.copyWith(color: textColor),
                          overflow: TextOverflow.ellipsis),
                      Text("$noOfHours hours",
                          style: AppStyles.subHeaderForGridCard
                              .copyWith(fontWeight: FontWeight.w400,color: textColor),
                          overflow: TextOverflow.ellipsis),
                    ],
                  ),
                  SizedBox(
                    height: AppLayout.getHeight(8),
                  ),
                  Row(
                    children: [
                      Container(
                        height: AppLayout.getHeight(30),
                        width: AppLayout.getWidth(30),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.amber,
                            image: DecorationImage(
                                image: AssetImage(instructorImgPath))),
                      ),
                      SizedBox(
                        width: AppLayout.getWidth(8),
                      ),
                      SizedBox(
                        width: AppLayout.getWidth(125),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              intructorName,
                              style: AppStyles.headerForGridCard.copyWith(
                                  fontSize: AppLayout.getWidth(14),
                                  fontWeight: FontWeight.w400,color: textColor),
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              "Instructor",
                              style: AppStyles.subHeaderForGridCard.copyWith(color: textColor),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ]),
    );
  }
}
