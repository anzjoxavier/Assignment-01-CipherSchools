import 'package:cipherschools/Utilities/app_layout.dart';
import 'package:cipherschools/Utilities/app_styles.dart';
import 'package:flutter/material.dart';

class ButtonForBigSquare extends StatelessWidget {
  const ButtonForBigSquare(
      {super.key, required this.buttonText, required this.iconName});
  final String buttonText;
  final IconData iconName;
  @override
  Widget build(BuildContext context) {
    
    return Container(
      width: AppLayout.getWidth(140),
      padding: EdgeInsets.all(AppLayout.getWidth(7)),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 1),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            buttonText,
            style: AppStyles.subHeaderForBigSquare.copyWith(fontSize: AppLayout.getHeight(16)),
          ),
          SizedBox(
            width: AppLayout.getWidth(2),
          ),
          Icon(
            iconName,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
