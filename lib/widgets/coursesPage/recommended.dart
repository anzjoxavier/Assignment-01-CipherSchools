import 'package:cipherschools/Data/data.dart';
import 'package:cipherschools/Utilities/app_layout.dart';
import 'package:cipherschools/Utilities/app_styles.dart';
import 'package:cipherschools/widgets/constants/gridCard.dart';
import 'package:flutter/material.dart';


class RecommendedCourses extends StatefulWidget {
  
  RecommendedCourses(
      {super.key,
      this.cardColor = Colors.white,
      this.textColor = Colors.black});
  Color cardColor = Colors.white;
  Color textColor = Colors.black;
  @override
  State<RecommendedCourses> createState() => _RecommendedCoursesState();
}

class _RecommendedCoursesState extends State<RecommendedCourses> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Recommended Courses",
          style: AppStyles.headerTextStyle
              .copyWith(fontSize: 20, color: widget.textColor),
        ),
        SizedBox(
          height: AppLayout.getHeight(280),
          width: AppLayout.getScreenWidth(),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              ListView.builder(
               scrollDirection: Axis.horizontal,
                primary: false,
                shrinkWrap: true,
                physics:const NeverScrollableScrollPhysics(),
                itemCount: Data.gridData["Trendings"]?.length,
                itemBuilder: (context, value) {
                  return Row(
                    children: [
                      GridCard(
                          imagPath: Data.gridData["Trendings"]![value]["imagPath"],
                          category:Data.gridData["Trendings"]![value]["category"],
                          courseName: Data.gridData["Trendings"]![value]["courseName"],
                          noOfVideos:Data.gridData["Trendings"]![value]["noOfVideos"],
                          noOfHours: Data.gridData["Trendings"]![value]["noOfHours"],
                          intructorName: Data.gridData["Trendings"]![value]["intructorName"],
                          instructorImgPath: Data.gridData["Trendings"]![value]["instructorImgPath"],
                          textColor: widget.textColor,
                          cardColor: widget.cardColor,
                          ),
                          SizedBox(
                            width: AppLayout.getWidth(10),
                          )
                    ],
                  );
                }),
            ]),
          ),
        ),
      ],
    );
  }
}
