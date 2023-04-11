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
            
          ],
        ) 
        ),
    );
  }
}