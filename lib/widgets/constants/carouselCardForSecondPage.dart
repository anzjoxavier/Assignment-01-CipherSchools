import 'package:cipherschools/Utilities/app_layout.dart';
import 'package:cipherschools/Utilities/app_styles.dart';
import 'package:flutter/material.dart';


class CarouselCardForCoursePage extends StatefulWidget {
  const CarouselCardForCoursePage(
      {super.key,
      required this.heading,
      required this.category,
      required this.iconImgPath,
      required this.instructorName,
      required this.buttonName, required this.decoImgPath});
  final String decoImgPath;
  final String heading;
  final String category;
  final String iconImgPath;
  final String instructorName;
  final String buttonName;
  @override
  State<CarouselCardForCoursePage> createState() =>
      _CarouselCardForCoursePageState();
}

class _CarouselCardForCoursePageState extends State<CarouselCardForCoursePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppLayout.getHeight(200),
      width: AppLayout.getScreenWidth(),
      padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getHeight(25), vertical: AppLayout.getWidth(20)),
      decoration: BoxDecoration(
        color: Colors.amber,
        image: DecorationImage(
            image: AssetImage(widget.decoImgPath), fit: BoxFit.fill),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: AppLayout.getWidth(170),
            child: Text(
              widget.heading,
              overflow: TextOverflow.ellipsis,
              style: AppStyles.headerTextStyle.copyWith(
                  fontSize: AppLayout.getHeight(18),
                  color: Colors.white,
                  fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(
            height: AppLayout.getHeight(5),
          ),
          Container(
            padding: EdgeInsets.all(AppLayout.getHeight(6)),
            decoration: BoxDecoration(
                color: Colors.white24,
                borderRadius: BorderRadius.circular(AppLayout.getWidth(5))),
            child: Text(
              widget.category,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  fontSize: AppLayout.getHeight(12)),
            ),
          ),
          SizedBox(
            height: AppLayout.getHeight(8),
          ),
          Row(
            children: [
              SizedBox(
                height: AppLayout.getHeight(22),
                width: AppLayout.getWidth(22),
                child: Image.asset(widget.iconImgPath),
              ),
              SizedBox(
                width: AppLayout.getWidth(3),
              ),
               Text(
                widget.instructorName,
                overflow: TextOverflow.ellipsis,
                style:const TextStyle(color: Colors.white),
              )
            ],
          ),
          SizedBox(
            height: AppLayout.getHeight(5),
          ),
          Container(
            height: AppLayout.getHeight(25),
            width: AppLayout.getWidth(90),
            padding: EdgeInsets.all(AppLayout.getHeight(5)),
            decoration: BoxDecoration(
                color: AppStyles.themeColor,
                borderRadius: BorderRadius.circular(AppLayout.getWidth(5))),
            child: Center(
                child: Text(
              widget.buttonName,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: Colors.white,fontSize: AppLayout.getHeight(14)),
            )),
          )
        ],
      ),
    );
  }
}
