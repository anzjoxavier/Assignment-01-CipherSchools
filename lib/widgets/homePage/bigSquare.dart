import 'package:cipherschools/widgets/homePage/learningButton.dart';
import 'package:flutter/material.dart';
import '../../Utilities/app_layout.dart';
import '../../Utilities/app_styles.dart';
import '../constants/buttonForBigSquare.dart';

typedef TapFuntion = void Function();

class BigSquare extends StatelessWidget {
  const BigSquare(
      {super.key,
      required this.mainHeading,
      required this.subHeading,
      required this.buttonText,
      required this.iconName,
      required this.onTap,
      required this.assetPath});
  final String mainHeading;
  final String subHeading;
  final String buttonText;
  final IconData iconName;
  final TapFuntion onTap;
  final String assetPath;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppLayout.getHeight(15)),
      height: AppLayout.getHeight(310),
      width: AppLayout.getWidth(380),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.black,
          image: DecorationImage(
              image: AssetImage(assetPath),
              fit: BoxFit.fill,
              )),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              subHeading,
              style: AppStyles.subHeaderForBigSquare,
            ),
            SizedBox(
              height: AppLayout.getHeight(10),
            ),
            Text(mainHeading, style: AppStyles.headerForBigSquare),
            SizedBox(
              height: AppLayout.getHeight(10),
            ),
            GestureDetector(
              onTap: onTap,
                child: ButtonForBigSquare(
                buttonText: buttonText,
                iconName: iconName,
              ),
            )
          ]),
    );
  }
}
