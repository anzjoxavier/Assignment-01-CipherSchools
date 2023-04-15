import 'package:cipherschools/Utilities/app_layout.dart';
import 'package:cipherschools/Utilities/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MentorCard extends StatelessWidget {
  const MentorCard({super.key, required this.imgPath, required this.name, required this.company});
  final String imgPath;
  final String name;
  final String company;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppLayout.getHeight(350),
      width: AppLayout.getWidth(180),
      child: Column(
        children: [
          Stack(
            fit: StackFit.loose,
            clipBehavior: Clip.hardEdge,
            alignment: AlignmentDirectional.bottomStart,
            children: [
              Container(
                height: AppLayout.getHeight(130),
                width: AppLayout.getWidth(190),
                decoration: BoxDecoration(
                    color: AppStyles.secondaryColor,
                    borderRadius:
                        BorderRadius.circular(AppLayout.getWidth(20))),
              ),
              Container(
                transformAlignment:Alignment.bottomCenter,
                alignment: Alignment.bottomCenter,
                clipBehavior: Clip.hardEdge,
                height: AppLayout.getHeight(200),
                width: AppLayout.getWidth(190),
                decoration: BoxDecoration(
              
                    borderRadius:
                        BorderRadius.circular(AppLayout.getWidth(20))),
                child: SizedBox(
                    height: AppLayout.getHeight(200),
                    width: AppLayout.getWidth(190),
                    child: Image.network(
                       imgPath)),
              )
            ],
          ),
          SizedBox(
            height: AppLayout.getHeight(20),
          ),
          Text(
            name,
            style: AppStyles.headerTextStyle.copyWith(
                color: AppStyles.themeColor,
                fontSize: AppLayout.getHeight(24),
                fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: AppLayout.getHeight(5),
          ),
          Text(
            company,
            style: AppStyles.subHeaderTextStyle.copyWith(
                fontWeight: FontWeight.w300, fontSize: AppLayout.getHeight(18)),
          )
        ],
      ),
    );
  }
}
