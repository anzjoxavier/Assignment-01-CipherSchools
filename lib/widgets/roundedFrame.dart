import 'package:cipherschools/Utilities/app_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class RoundedPhotoFrame extends StatelessWidget {
  const RoundedPhotoFrame({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(color: Colors.red),
      width: AppLayout.getWidth(105),
      
      child: Stack(
        // fit: StackFit.loose,
        clipBehavior: Clip.none,
        children: [
          Positioned(
            left:AppLayout.getWidth(60),
            child: Container(
              width: AppLayout.getWidth(45),
              height: AppLayout.getHeight(45),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey,
                border: Border.all(
                  width: 3,
                  color: Colors.white,
                  strokeAlign: BorderSide.strokeAlignOutside,
                ),
              ),
              child: Image.asset("assets/images/Harshit_Coding_Mentor.png"),
            ),
          ),
          Positioned(
            right: AppLayout.getWidth(30),
            child: Container(
              width: AppLayout.getWidth(45),
              height: AppLayout.getHeight(45),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey,
                border: Border.all(
                  width: 3,
                  color: Colors.white,
                  strokeAlign: BorderSide.strokeAlignOutside,
                ),
              ),
              child: Image.asset("assets/images/Rajan_Coding_Mentor.png"),
            ),
          ),
          Container(
            width: AppLayout.getWidth(45),
            height: AppLayout.getHeight(45),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey,
                border: Border.all(
                  width: 3,
                  color: Colors.white,
                  strokeAlign: BorderSide.strokeAlignOutside,
                )),
            child: Image.asset("assets/images/Anurag_Coding_Mentor.png"),
          ),
          
        ],
      ),
    );
  }
}
