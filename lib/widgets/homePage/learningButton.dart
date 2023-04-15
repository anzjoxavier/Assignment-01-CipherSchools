import 'package:flutter/material.dart';
import '../../Utilities/app_layout.dart';
import '../../Utilities/app_styles.dart';

typedef TapFuntion = void Function();

class LearningButton extends StatelessWidget {
 final TapFuntion? tapFuntion;
   const LearningButton({super.key,this.tapFuntion});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:tapFuntion,
      child: Container(
        padding: EdgeInsets.all(AppLayout.getHeight(8)),
        width: AppLayout.getWidth(180),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          color: AppStyles.themeColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Text(
              "Start Learning Now",
              style: TextStyle(fontSize: AppLayout.getHeight(14), color: Colors.white),
            ),
          const  Icon(Icons.arrow_forward_rounded, color: Colors.white)
          ],
        ),
      ),
    );
  }
}
