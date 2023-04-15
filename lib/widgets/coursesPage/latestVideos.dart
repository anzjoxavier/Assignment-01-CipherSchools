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

class _LatestVideoState extends State<LatestVideo> with TickerProviderStateMixin{
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
          "Latest Videos",
          style: AppStyles.headerTextStyle
              .copyWith(fontSize: 20, color: widget.textColor),
        ),
        Stack(
        children: [
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
                physics:const NeverScrollableScrollPhysics(),
                itemCount: Data.coursedata["LatestVideos"]?.length,
                itemBuilder: (context, value) {
                  return Row(
                    children: [
                      GridCard(
                          imagPath: Data.coursedata["LatestVideos"]![value]["imagPath"],
                          category:Data.coursedata["LatestVideos"]![value]["category"],
                          courseName: Data.coursedata["LatestVideos"]![value]["courseName"],
                          noOfVideos:Data.coursedata["LatestVideos"]![value]["noOfVideos"],
                          noOfHours: Data.coursedata["LatestVideos"]![value]["noOfHours"],
                          intructorName: Data.coursedata["LatestVideos"]![value]["intructorName"],
                          instructorImgPath: Data.coursedata["LatestVideos"]![value]["instructorImgPath"],
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
                         double i = _scrollController.offset;
                        if (i>0) {
                          i -= 190;
                          _scrollController.animateTo(i,
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
                         double i = _scrollController.offset;
                        if (i < 760) {
                          i += 190;
                          _scrollController.animateTo(i,
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
        
        ]
        ),
      ],
    );
  }
}