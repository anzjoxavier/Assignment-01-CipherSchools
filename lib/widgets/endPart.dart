import 'package:cipherschools/Utilities/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../Utilities/app_layout.dart';

class EndPart extends StatelessWidget {
  const EndPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: AppLayout.getHeight(300),
          padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(10)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          SizedBox(
            height: AppLayout.getHeight(20),
          ),
          SizedBox(
            height: AppLayout.getHeight(50),
            child: Image.asset("assets/images/Cipherschools_small.png")),
            SizedBox(
            height: AppLayout.getHeight(20),
          ),
            Text("Cipherschools is a bootstrapped educational video streaming platform in India that is connecting passionate unskilled students to skilled Industry experts to fulfill their career dreams.",
            style: AppStyles.subHeaderForBigSquare.copyWith(color: AppStyles.secondaryColor,
            fontSize: AppLayout.getWidth(16),
            fontWeight: FontWeight.w400,height: AppLayout.getHeight(1.5)),),
            SizedBox(
            height: AppLayout.getHeight(20),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             const Icon(Icons.email_outlined),
              SizedBox(
                width: AppLayout.getWidth(5),
              ),
              Text("support@cipherschools.com",
            style: AppStyles.subHeaderForBigSquare.copyWith(color: AppStyles.secondaryColor,
            fontSize: AppLayout.getWidth(16),
            fontWeight: FontWeight.w400,height: AppLayout.getHeight(1.5)),),
            
          ],),
          
          ],),
        ),

        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text("© 2020 CipherSchools All Rights Reserved",
          style: AppStyles.subHeaderForBigSquare.copyWith(color: AppStyles.secondaryColor,
          fontSize: AppLayout.getWidth(16),
          fontWeight: FontWeight.w400,height: AppLayout.getHeight(1.5)),),
          SizedBox(
                height: AppLayout.getHeight(40),
              ),
        ])
      ],
    );
  }
}