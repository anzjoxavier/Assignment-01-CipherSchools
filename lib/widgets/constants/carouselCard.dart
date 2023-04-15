import 'package:cipherschools/Utilities/app_styles.dart';
import 'package:flutter/material.dart';
import '../../Utilities/app_layout.dart';

class PictureCarouselCard extends StatelessWidget {
  const PictureCarouselCard(
      {super.key,
      required this.picturePath,
      required this.heading,
      required this.subHeading});
  final String picturePath;
  final String heading;
  final String subHeading;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.all(AppLayout.getHeight(20)),
      height: AppLayout.getHeight(180),
      width: AppLayout.getWidth(180),
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(color: Colors.white, spreadRadius: 5, blurRadius: 50)
          ],
          image:  const DecorationImage(
              image:AssetImage("assets/images/CarouselCardImage.png"),
              fit: BoxFit.fill,
          )
          ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            padding: EdgeInsets.all(AppLayout.getHeight(10)),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            // child: Icon(CupertinoIcons.person_2_square_stack),
            child: Image.asset(
              picturePath,
              width: AppLayout.getWidth(23),
            ),
          ),
          SizedBox(
            height: AppLayout.getHeight(5),
          ),
          Text(
            heading,
            style: AppStyles.carouselCardHeading,
          ),
          SizedBox(
            height: AppLayout.getHeight(5),
          ),
          Text(
            subHeading,
            style: AppStyles.carouselCardSubHeading,
          )
        ],
      ),
    );
  }
}

class IconCarouselCard extends StatelessWidget {
  const IconCarouselCard({super.key, required this.icon, required this.heading, required this.subHeading});
  final IconData icon;
  final String heading;
  final String subHeading;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppLayout.getHeight(20)),
      height: AppLayout.getHeight(180),
      width: AppLayout.getWidth(180),
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(color: Colors.white, spreadRadius: 5, blurRadius: 50)
          ],
          image:  const DecorationImage(
              image:AssetImage("assets/images/CarouselCardImage.png"),
              fit: BoxFit.fill,
          )
          ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            padding: EdgeInsets.all(AppLayout.getHeight(10)),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: Icon(icon,color: AppStyles.themeColor,),
            //  child: Image.asset("assets/images/Cipherschools_icon.png",width: 20,),
          ),
          SizedBox(
            height: AppLayout.getHeight(5),
          ),
          Text(
            heading,
            style: AppStyles.carouselCardHeading,
          ),
          SizedBox(
            height: AppLayout.getHeight(5),
          ),
          Text(
            subHeading,
            style: AppStyles.carouselCardSubHeading,
          )
        ],
      ),
    );
  }
}