import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:cipherschools/Utilities/app_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../Utilities/app_styles.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 8,
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
              style: AppStyles.titleTextStyle,
            ),
            const Spacer(),
            // Icon(Icons.menu_sharp,color: Colors.black,)
            Image.asset(
              "assets/images/menu_icon.png",
              width: 40,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child:Column(

        
          children: [
            SizedBox(
              height: AppLayout.getHeight(50), 
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Welcome to ",style: AppStyles.headerTextStyle,),
                Text("the ",style: AppStyles.headerTextStyle.copyWith(color: AppStyles.themeColor),),
              ],
            ),
            SizedBox(
              height: AppLayout.getHeight(10), 
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Future ",style: AppStyles.headerTextStyle.copyWith(color: AppStyles.themeColor),),
                Text("of Learning! ",style: AppStyles.headerTextStyle,),
              ],
            ),
            SizedBox(
              height: AppLayout.getHeight(15), 
            ),
            Text("Start Learning by best creators for",style: AppStyles.subHeaderTextStyle,),
            SizedBox(
              height: AppLayout.getHeight(6), 
            ),
             AnimatedTextKit(
              repeatForever: true,
              animatedTexts: [
                TyperAnimatedText('absolutely Free',textStyle: AppStyles.animatedTextStyle,speed: Duration(milliseconds: 200)),
              ],
              onTap:(){},
            ),
          ],
        ) 
        ),
    );
  }
}