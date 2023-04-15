import 'package:carousel_slider/carousel_slider.dart';
import 'package:cipherschools/Data/data.dart';
import 'package:flutter/material.dart';
import '../../Utilities/app_layout.dart';
import '../../Utilities/app_styles.dart';
import '../constants/carouselCardForSecondPage.dart';

class CarouselSliderForCoursePage extends StatefulWidget {
  const CarouselSliderForCoursePage({super.key});

  @override
  State<CarouselSliderForCoursePage> createState() =>
      _CarouselSliderForCoursePageState();
}

class _CarouselSliderForCoursePageState
    extends State<CarouselSliderForCoursePage> {
  List slideList = Data.slideList;
  CarouselController carouselController = CarouselController();

  int currentPos = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Stack(children: [
      CarouselSlider.builder(
        carouselController: carouselController,
        itemCount: slideList.length,
        options: CarouselOptions(
            height: AppLayout.getHeight(200),
            viewportFraction: 0.98,
            autoPlay: true,
            onPageChanged: (index, reason) {
              setState(() {
                currentPos = index;
              });
            }),
        itemBuilder: (context, index, value) {
          return CarouselCardForCoursePage(
            heading: slideList[index]["heading"], 
            category: slideList[index]["category"], 
            iconImgPath: slideList[index]["iconImgPath"], 
            instructorName: slideList[index]["instructorName"], 
            buttonName: slideList[index]["buttonName"], 
            decoImgPath: slideList[index]["decoImgPath"]);
        },
      ),
      SizedBox(
        height: AppLayout.getHeight(200),
        width: AppLayout.getScreenWidth(),
        child: Align(
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              TextButton(
                child: const Icon(
                  Icons.arrow_back_ios_rounded,
                  size: 25,
                  color: Colors.white70,
                ),
                onPressed: () {
                  carouselController.previousPage();
                },
              ),
              const Spacer(),
              TextButton(
                child: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 25,
                  color: Colors.white70,
                ),
                onPressed: () {
                  carouselController.nextPage();
                },
              )
            ],
          ),
        ),
      ),
      SizedBox(
        height: AppLayout.getHeight(200),
        width: AppLayout.getScreenWidth(),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: slideList.map((value) {
              int index = slideList.indexOf(value);
              return Container(
                width: 6,
                height: 6,
                margin:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  // borderRadius: BorderRadius.circular(10),
                  color:
                      currentPos == index ? AppStyles.themeColor : Colors.white70,
                ),
              );
            }).toList(),
          ),
        ),
      ),
    ]));
  }
}
