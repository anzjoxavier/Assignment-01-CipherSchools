import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:cipherschools/Utilities/app_layout.dart';
import 'package:cipherschools/main.dart';
import 'package:cipherschools/widgets/bigSquare.dart';
import 'package:cipherschools/widgets/mentorAndRating.dart';
import 'package:flutter/material.dart';
import '../Animations/customDialogRoute.dart';
import '../Utilities/app_styles.dart';
import '../widgets/animatedInteger.dart';
import '../widgets/appBar.dart';
import '../widgets/bestAreHere.dart';
import '../widgets/carouselCardSlider.dart';
import '../widgets/creatorResponse.dart';
import '../widgets/creatorsCard.dart';
import '../widgets/learningButton.dart';
import '../widgets/secondaryThemeBox.dart';
import '../widgets/topHeading.dart';

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
      body: SingleChildScrollView(
          child: Column(
        children: [
          //Column Upto Secondary Color Box
          Padding(
            padding:EdgeInsets.symmetric(horizontal: AppLayout.getWidth(10)),
            child: Column(
              children: [
                SizedBox(
                  height: AppLayout.getHeight(50),
                ),
                const TopHeading(),
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
                SizedBox(
                  height: AppLayout.getHeight(30),
                ),
                BigSquare(
                    mainHeading: "Best platform for the students",
                    subHeading: "Unlock your learning potential with CipherSchools",
                    buttonText: "For Students",
                    iconName: Icons.shield_outlined,
                    onTap: () {
                      setState(() {
                        HomePage.UniversalIndex = 1;
                        Navigator.of(context).popAndPushNamed('/home');
                      });
                    },
                    assetPath: "assets/images/girl1.png"),
                SizedBox(
                  height: AppLayout.getHeight(20),
                ),
                BigSquare(
                    mainHeading: "Be the mentor you never had",
                    subHeading:
                        "Empowering students to open their minds to utmost knowledge",
                    buttonText: "For Creators",
                    iconName: Icons.person_pin_outlined,
                    onTap: () {
                      Navigator.of(context).push(CustomDialogRoute(
                        builder: (context) {
                          return CreatorResponse();
                        },
                      ));
                    },
                    assetPath: "assets/images/girl2.png"),
                SizedBox(
                  height: AppLayout.getHeight(20),
                ),
              ],
            ),
          ),
          const SecondaryThemeBox(),
          //Postion after Secondary Theme Box
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(10)),
            child: Column(
              children: [
                SizedBox(
                  height: AppLayout.getHeight(20),
                ),
               const CreatorsCard(),
               SizedBox(
                  height: AppLayout.getHeight(30),
                ),
              const BestsAreHere()
              ],
            ),
          )
        ],
      )),
    );
  }
}


