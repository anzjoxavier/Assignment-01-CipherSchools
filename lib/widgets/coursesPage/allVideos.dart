import 'package:cipherschools/Utilities/app_layout.dart';
import 'package:cipherschools/Utilities/app_styles.dart';
import 'package:flutter/material.dart';
import '../../Data/data.dart';
import '../constants/gridCard.dart';

class AllVideos extends StatefulWidget {
   AllVideos({super.key,
      this.cardColor = Colors.white,
      this.textColor = Colors.black});
  Color cardColor = Colors.white;
  Color textColor = Colors.black;

  @override
  State<AllVideos> createState() => _AllVideosState();
}

class _AllVideosState extends State<AllVideos> {
  final double gridHeight = AppLayout.getHeight(260);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("All Videos",style: AppStyles.headerTextStyle
              .copyWith(fontSize: AppLayout.getHeight(20), color: widget.textColor),),
        SizedBox(height: AppLayout.getHeight(20),),
        SizedBox(
        height:Data.allvideos["allvideos"]!.length%2==0? 
        gridHeight * ((Data.allvideos["allvideos"]!.length / 2)):
        gridHeight * ((Data.allvideos["allvideos"]!.length / 2) + 1),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio:
                AppLayout.getWidth(180) / AppLayout.getHeight(240),
            crossAxisSpacing: AppLayout.getWidth(10),
            mainAxisSpacing: AppLayout.getHeight(10),
            crossAxisCount: 2,
          ),
          clipBehavior: Clip.none,
          shrinkWrap: false,
          primary: false,
          physics: const NeverScrollableScrollPhysics(),
          itemCount:Data.allvideos["allvideos"]?.length,
          itemBuilder: (BuildContext context, int index) {
            return GridCard(
                // imagPath: Data.gridData[Data.gridData.keys.elementAt(currentIndex)]![index]["imagPath"],
                imagPath: Data.allvideos["allvideos"]![index]["imagPath"],
                category: Data.allvideos["allvideos"]![index]["category"],
                courseName:Data.allvideos["allvideos"]![index]["courseName"],
                noOfVideos: Data.allvideos["allvideos"]![index]["noOfVideos"],
                noOfHours: Data.allvideos["allvideos"]![index]["noOfHours"],
                intructorName: Data.allvideos["allvideos"]![index]["intructorName"],
                instructorImgPath:Data.allvideos["allvideos"]![index]["instructorImgPath"],
                textColor: widget.textColor,
                cardColor: widget.cardColor,
                );
          },
        ),
      )
      ],
    );
  }
}