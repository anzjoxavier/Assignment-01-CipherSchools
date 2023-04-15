import 'package:cipherschools/Utilities/app_layout.dart';
import 'package:cipherschools/Utilities/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DiscordCard extends StatelessWidget {
  const DiscordCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppLayout.getScreenWidth(),
      height: AppLayout.getHeight(662),
      decoration: BoxDecoration(
        color: AppStyles.secondaryColor,

      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal:AppLayout.getWidth(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          SizedBox(
            height: AppLayout.getHeight(30),
          ),
          Text("Join our community",style: AppStyles.headerTextStyle.copyWith(
            color: Colors.white,
            fontSize: AppLayout.getWidth(30),
            fontWeight: FontWeight.w700),),
            Row(
              children: [
                Text("on",style: AppStyles.headerTextStyle.copyWith(
                color: Colors.white,
                fontSize: AppLayout.getWidth(30),
                fontWeight: FontWeight.w700),),
                SizedBox(
            width: AppLayout.getWidth(10),
          ),
                SizedBox(
                  height: AppLayout.getHeight(80),
                  // width: AppLayout.getWidth(180),
                  child: Image.asset("assets/images/discord-logo.png"))
              ],
            ),
            Text("Come together and make a difference! Connect and grow with our Discord community! Join our community for an interactive learning experience!",
            style: AppStyles.subHeaderForBigSquare.copyWith(fontSize: AppLayout.getWidth(16),height: AppLayout.getHeight(1.4)),),
            SizedBox(
            height: AppLayout.getHeight(30),
          ),
          Container(
            padding: EdgeInsets.all(AppLayout.getWidth(10)),
            width: AppLayout.getWidth(150), 
            decoration: BoxDecoration(borderRadius:BorderRadius.circular(AppLayout.getWidth(10)),
            color: Colors.indigoAccent
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              const  Text("Join Discord ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
                SizedBox(
                  width: AppLayout.getWidth(5),
                ),
              const  ImageIcon(
              AssetImage("assets/images/discord.png"),
               color: Colors.white,
               size: 22,
              )
              ],
            ),
          ),
          SizedBox(
            height: AppLayout.getHeight(30),
          ),
          Stack(
            alignment: Alignment.bottomCenter,
            children:[ 
            
            Container(
              height: AppLayout.getHeight(320),
              width: AppLayout.getWidth(320),
              decoration: BoxDecoration(
                color: Colors.indigoAccent,
                shape: BoxShape.circle
              ),
            ),
            Image.asset("assets/images/phone.png"),

            ])
            
        ]),
      ),
    );
  }
}