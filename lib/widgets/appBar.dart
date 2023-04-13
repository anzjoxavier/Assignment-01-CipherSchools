
import 'package:flutter/material.dart';


import '../Utilities/app_styles.dart';

class AppBarClass{

 static AppBar customAppBar=AppBar(
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
      );


}