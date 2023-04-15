import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:cipherschools/Utilities/app_layout.dart';
import 'package:cipherschools/Utilities/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../Data/data.dart';
import '../constants/gridCard.dart';

class BestsAreHere extends StatefulWidget {
  const BestsAreHere({super.key});

  @override
  State<BestsAreHere> createState() => _BestsAreHereState();
}

class _BestsAreHereState extends State<BestsAreHere> {
  int currentIndex = 0;
  final double gridHeight = AppLayout.getHeight(260);
  @override
  Widget build(BuildContext context) {
    CarouselController carouselController = CarouselController();
    return Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text("Bests are here",style: AppStyles.headerTextStyle.copyWith(fontSize: 28),),
      SizedBox(
        height: AppLayout.getHeight(40),
      ),
      CarouselSlider.builder(
          itemCount: Data.switchItems.length,
          options: CarouselOptions(
            autoPlay: true,
            height: AppLayout.getHeight(40),
            viewportFraction: 0.58,
          ),
          carouselController: carouselController,
          itemBuilder: (context, index, value) => GestureDetector(
              onTap: () {
                setState(() {
                  currentIndex = index;
                });
                
              },
              child: RectButton(text: Data.gridData.keys.elementAt(index)))),
      SizedBox(
        height: AppLayout.getHeight(30),
      ),
      // Row(
      //   mainAxisAlignment: MainAxisAlignment.end,
      //   children: <Widget>[
      //     TextButton(
      //       child: const Icon(
      //         Icons.arrow_circle_left,
      //         size: 40,
      //         color: Colors.black,
      //       ),
      //       onPressed: () {
      //         carouselController.previousPage();
      //       },
      //     ),
      //     TextButton(
      //       child: const Icon(
      //         Icons.arrow_circle_right,
      //         size: 40,
      //       ),
      //       onPressed: () {
      //         carouselController.nextPage();
      //       },
      //     )
      //   ],
      // ),
      SizedBox(
        height:Data.gridData[Data.gridData.keys.elementAt(currentIndex)]!.length%2==0? 
        gridHeight * ((Data.gridData[Data.gridData.keys.elementAt(currentIndex)]!.length / 2)):
        gridHeight * ((Data.gridData[Data.gridData.keys.elementAt(currentIndex)]!.length / 2) + 1),
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
          itemCount:Data.gridData[Data.gridData.keys.elementAt(currentIndex)]!.length,
          itemBuilder: (BuildContext context, int index) {
            return GridCard(
                // imagPath: Data.gridData[Data.gridData.keys.elementAt(currentIndex)]![index]["imagPath"],
                imagPath: Data.gridData[Data.gridData.keys.elementAt(currentIndex)]![index]["imagPath"],
                category: Data.gridData[Data.gridData.keys.elementAt(currentIndex)]![index]["category"],
                courseName: Data.gridData[Data.gridData.keys.elementAt(currentIndex)]![index]["courseName"],
                noOfVideos: Data.gridData[Data.gridData.keys.elementAt(currentIndex)]![index]["noOfVideos"],
                noOfHours: Data.gridData[Data.gridData.keys.elementAt(currentIndex)]![index]["noOfHours"],
                intructorName: Data.gridData[Data.gridData.keys.elementAt(currentIndex)]![index]["intructorName"],
                instructorImgPath:Data.gridData[Data.gridData.keys.elementAt(currentIndex)]![index]["instructorImgPath"]
                
                );
          },
        ),
      )
    ]));
  }
}

class RectButton extends StatelessWidget {
  const RectButton({super.key, required this.text});
  final String text;
  
  @override
  Widget build(BuildContext context) {
    return Container(
        height: AppLayout.getHeight(40),
        width: AppLayout.getHeight(200),
        decoration: BoxDecoration(
            // color: AppStyles.themeColor,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: AppStyles.themeColor, width: 2)),
        child: Center(
            child: Text(
          text,
          style: AppStyles.subHeaderForBigSquare.copyWith(
              fontWeight: FontWeight.w400, color: AppStyles.themeColor),
        )));
  }
}
