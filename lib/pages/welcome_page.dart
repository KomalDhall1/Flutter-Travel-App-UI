import 'package:flutter/material.dart';
import 'package:travel_app/misc/colors.dart';
import 'package:travel_app/widgets/respondise_button.dart';

import '../widgets/app_large_text.dart';
import '../widgets/app_text.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = ['welcome-one.png', 'welcome-two.png', 'welcome-three.png'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/' + images[index]),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              margin: const EdgeInsets.only(
                top: 100,
                left: 30,
                right: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppLargeText(
                          size: 25,
                          text: 'Trips',
                          color: AppColors.bigTextColor),
                      AppText(
                          size: 25,
                          text: 'Mountain',
                          color: AppColors.bigTextColor),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: 250,
                        child: AppText(
                            size: 15,
                            text:
                                'Mountains hikes give you an incredible sense of freedon along with endurance.',
                            color: AppColors.mainTextColor),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      ResponsiveButton(
                        width: 120,
                      ),
                    ],
                  ),
                  Column(
                    children: List.generate(3, (indexDots) {
                      return Container(
                        margin: const EdgeInsets.only(bottom: 4),
                        width: 8,
                        height: index == indexDots ? 25 : 8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: index == indexDots
                              ? AppColors.mainColor
                              : AppColors.mainColor.withOpacity(0.3),
                        ),
                      );
                    }),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
