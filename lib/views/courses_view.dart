import 'package:cipherschools/Utilities/app_layout.dart';
import 'package:flutter/material.dart';

import '../Utilities/app_styles.dart';
import '../main.dart';
import '../widgets/coursesPage/allVideos.dart';
import '../widgets/coursesPage/carouselSliderForCoursePage.dart';
import '../widgets/coursesPage/latestVideos.dart';
import '../widgets/coursesPage/recommended.dart';

class CoursesView extends StatefulWidget {
  const CoursesView({super.key});

  @override
  State<CoursesView> createState() => _CoursesViewState();
}

class _CoursesViewState extends State<CoursesView> {
  @override


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: HomePage.changeColor,
        elevation: 6,
        shadowColor: Colors.white,
        title: Row(
          children: [
            Image.asset(
              "assets/images/Cipherschools_icon.png",
              width: 33,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              "CipherSchools",
              style: AppStyles.titleTextStyle
                  .copyWith(color: HomePage.changeTextColor),
            ),
            const Spacer(),
            // Icon(Icons.menu_sharp,color: Colors.black,)
            Switch(
                activeThumbImage: const AssetImage("assets/images/moon.png"),
                inactiveThumbImage: const AssetImage("assets/images/sun.jpg"),
                value: HomePage.switchVal,
                onChanged: (value) {
                  setState(() {
                    HomePage.switchVal = value;
                    if (value == true) {
                      HomePage.changeColor = AppStyles.secondaryColor;
                      HomePage.changeTextColor = Colors.white;
                     
                    } else {
                      HomePage.changeColor = Colors.white;
                      HomePage.changeTextColor = Colors.black;
                     
                    }
                  });
                })
          ],
        ),
      ),
      backgroundColor: HomePage.changeColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
           const CarouselSliderForCoursePage(),
           SizedBox(height: AppLayout.getHeight(30),),
           Padding(
              padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(10)),
             child: Column(
               children: [
                 RecommendedCourses(textColor: HomePage.changeTextColor,cardColor: HomePage.changeColor,),
                 LatestVideo(textColor: HomePage.changeTextColor,cardColor: HomePage.changeColor),
                 AllVideos(textColor: HomePage.changeTextColor,cardColor: HomePage.changeColor,)
               ],
             ),
      
           )
      
          ],
        ),
      ),
    ));
  }
}
