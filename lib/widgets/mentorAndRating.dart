import 'package:cipherschools/Utilities/app_styles.dart';
import 'package:cipherschools/widgets/roundedFrame.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Utilities/app_layout.dart';

class MentorAndRating extends StatelessWidget {
  const MentorAndRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                const RoundedPhotoFrame(),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    Text(
                      "50+",
                      style: AppStyles.mentorAndRatingHeading,
                    ),
                   const Text("Mentors")
                  ],
                ),
                const Spacer(),
                Container(
                  height: AppLayout.getHeight(45),
                  width: AppLayout.getWidth(0.5),
                  decoration: const BoxDecoration(color: Colors.grey),
                ),
                const Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Text(
                      "4.8/5",
                      style: AppStyles.mentorAndRatingHeading,
                    ),
                    Row(
                      children: [
                        Row(
                          children: const [
                            Icon(
                              CupertinoIcons.star_fill,
                              color: Colors.orange,
                            ),
                            Icon(
                              CupertinoIcons.star_fill,
                              color: Colors.orange,
                            ),
                            Icon(
                              CupertinoIcons.star_fill,
                              color: Colors.orange,
                            ),
                            Icon(
                              CupertinoIcons.star_fill,
                              color: Colors.orange,
                            ),
                            Icon(
                              CupertinoIcons.star_lefthalf_fill,
                              color: Colors.orange,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: AppLayout.getWidth(10),
                        ),
                        const Text("Ratings"),
                      ],
                    )
                  ],
                ),
              ],
            );
  }
}