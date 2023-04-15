import 'package:cipherschools/Utilities/app_layout.dart';
import 'package:cipherschools/Utilities/app_styles.dart';
import 'package:cipherschools/views/courses_view.dart';
import 'package:cipherschools/views/home_view.dart';
import 'package:cipherschools/views/profile_view.dart';
import 'package:cipherschools/views/trending_view.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Animations/ValueChangeAnimation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      routes: {
        '/home': (context) => const HomePage(),
      },
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static bool switchVal = false;
  static Color changeColor = Colors.white;
  static Color changeTextColor = Colors.black;
  static int universalIndex = 0;
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> body = [
    const HomeView(),
    const CoursesView(),
    const TrendingView(),
    const ProfileView()
  ];
  // int currentIndex =0
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: body[HomePage.universalIndex],
        bottomNavigationBar: CurvedNavigationBar(
            index: HomePage.universalIndex,
            onTap: (index) {
              setState(() {
                HomePage.universalIndex = index;
              });
            },
            color: AppStyles.themeColor,
            backgroundColor: Colors.white,
            items: const [
              Icon(
                Icons.home,
                semanticLabel: "Home",
                color: Colors.white,
              ),
              Icon(
                CupertinoIcons.collections,
                semanticLabel: "Courses",
                color: Colors.white,
              ),
              Icon(
                CupertinoIcons.compass,
                color: Colors.white,
                semanticLabel: "Trending",
              ),
              Icon(
                CupertinoIcons.person_fill,
                color: Colors.white,
                semanticLabel: "Profile",
              )
            ]),
      ),
    );
  }
}
