import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:cipherschools/Utilities/app_layout.dart';
import 'package:cipherschools/main.dart';
import 'package:cipherschools/widgets/mentorAndRating.dart';
import 'package:flutter/material.dart';
import '../Animations/ValueChangeAnimation.dart';
import '../Utilities/app_styles.dart';
import '../widgets/animatedInteger.dart';
import '../widgets/appBar.dart';
import '../widgets/carouselCardSlider.dart';
import '../widgets/learningButton.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    print(height);
    print(width);
    return Scaffold(
      appBar: AppBarClass.customAppBar,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(10)),
        child: SingleChildScrollView(
            child: Column(
          children: [
            SizedBox(
              height: AppLayout.getHeight(50),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Welcome to ",
                  style: AppStyles.headerTextStyle,
                ),
                Text(
                  "the ",
                  style: AppStyles.headerTextStyle
                      .copyWith(color: AppStyles.themeColor),
                ),
              ],
            ),
            SizedBox(
              height: AppLayout.getHeight(10),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Future ",
                  style: AppStyles.headerTextStyle
                      .copyWith(color: AppStyles.themeColor),
                ),
                Text(
                  "of Learning! ",
                  style: AppStyles.headerTextStyle,
                ),
              ],
            ),
            SizedBox(
              height: AppLayout.getHeight(15),
            ),
            Text(
              "Start Learning by best creators for",
              style: AppStyles.subHeaderTextStyle,
            ),
            SizedBox(
              height: AppLayout.getHeight(6),
            ),
            AnimatedTextKit(
              repeatForever: true,
              animatedTexts: [
                TyperAnimatedText('absolutely Free',
                    textStyle: AppStyles.animatedTextStyle,
                    speed: const Duration(milliseconds: 200)),
              ],
            ),
            SizedBox(
              height: AppLayout.getHeight(20),
            ),
            SizedBox(width: width * 0.95, child: const MentorAndRating()),
            SizedBox(
              height: AppLayout.getHeight(30),
            ),
            LearningButton(
              tapFuntion: () {
                setState(() {
                  HomePage.UniversalIndex = 1;
                  Navigator.of(context).popAndPushNamed('/home');
                });
              },
            ),
            SizedBox(
              height: AppLayout.getHeight(30),
            ),
            CarouselCardSlider(),
            SizedBox(
              height: AppLayout.getHeight(60),
            ),
            const AnimatedInteger(),

          ],
        )),
      ),
    );
  }
}
