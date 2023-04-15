import 'package:cipherschools/Data/data.dart';
import 'package:cipherschools/Utilities/app_layout.dart';
import 'package:cipherschools/Utilities/app_styles.dart';
import 'package:cipherschools/main.dart';
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

class _RecommendedCoursesState extends State<RecommendedCourses>
    with TickerProviderStateMixin {
  ScrollController _scrollController = ScrollController();


  @override
  void dispose() {
    _scrollController.dispose(); // dispose the controller
    super.dispose();
  }

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
        Stack(children: [
          SizedBox(
            height: AppLayout.getHeight(280),
            width: AppLayout.getScreenWidth(),
            child: SingleChildScrollView(
              controller: _scrollController,
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                ListView.builder(
                    scrollDirection: Axis.horizontal,
                    primary: false,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: Data.coursedata["recommended"]?.length,
                    itemBuilder: (context, value) {
                      return Row(
                        children: [
                          GridCard(
                            imagPath: Data.coursedata["recommended"]![value]
                                ["imagPath"],
                            category: Data.coursedata["recommended"]![value]
                                ["category"],
                            courseName: Data.coursedata["recommended"]![value]
                                ["courseName"],
                            noOfVideos: Data.coursedata["recommended"]![value]
                                ["noOfVideos"],
                            noOfHours: Data.coursedata["recommended"]![value]
                                ["noOfHours"],
                            intructorName:
                                Data.coursedata["recommended"]![value]
                                    ["intructorName"],
                            instructorImgPath:
                                Data.coursedata["recommended"]![value]
                                    ["instructorImgPath"],
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
          SizedBox(
            height: AppLayout.getHeight(280),
            width: AppLayout.getScreenWidth(),
            child: Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(shape: BoxShape.circle,color: widget.cardColor,
                    boxShadow: [
           BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 10,
            offset: const Offset(0, 3), // changes position of shadow
            ),
            ],),
                    child: TextButton(
                      child:  Icon(
                        Icons.arrow_back_ios_rounded,
                        size: 25,
                        color: widget.textColor,
                      ),
                      onPressed: () {
                          int i = _scrollController.offset~/190;
                        if (i>=0) {
                          i -= 1;
                          _scrollController.animateTo(i*190,
                              duration: const Duration(seconds: 1),
                              curve: Curves.linear);
                        }
                      },
                    ),
                  ),
                  const Spacer(),
                  Container(
                    decoration: BoxDecoration(shape: BoxShape.circle,color: widget.cardColor,
                    boxShadow: [
            BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 10,
            offset: const Offset(0, 3), // changes position of shadow
            ),
            ],),
                    child: TextButton(
                      child:  Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 25,
                        color: widget.textColor,
                      ),
                      onPressed: () {
                         int i = _scrollController.offset~/190;
                        if (i < 770~/190) {
                          i += 1;
                          _scrollController.animateTo(i*190,
                              duration: const Duration(seconds: 1),
                              curve: Curves.linear);
                        }
                                   
                  
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ]),
      ],
    );
  }
}
