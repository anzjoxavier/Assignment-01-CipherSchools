import 'package:flutter/material.dart';
import '../../Data/data.dart';
import '../../Utilities/app_layout.dart';
import '../../Utilities/app_styles.dart';
import '../constants/gridCard.dart';

class LatestVideo extends StatefulWidget {
  
  LatestVideo(
      {super.key,
      this.cardColor = Colors.white,
      this.textColor = Colors.black});
  Color cardColor = Colors.white;
  Color textColor = Colors.black;
  @override
  State<LatestVideo> createState() => _LatestVideoState();
}

class _LatestVideoState extends State<LatestVideo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Latest Videos",
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