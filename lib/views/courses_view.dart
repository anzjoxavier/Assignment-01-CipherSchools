import 'package:flutter/material.dart';

import '../Utilities/app_styles.dart';
import '../main.dart';
import '../widgets/coursesPage/carouselSliderForCoursePage.dart';

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
      body: Column(
        children: [
         CarouselSliderForCoursePage()

        ],
      ),
    ));
  }
}
