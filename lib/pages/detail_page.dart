import 'package:flutter/material.dart';
import 'package:travel_app/misc/colors.dart';
import 'package:travel_app/widgets/app_buttons.dart';
import 'package:travel_app/widgets/app_large_text.dart';
import 'package:travel_app/widgets/respondise_button.dart';

import '../widgets/app_text.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int gottenStars = 3;
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        width: double.maxFinite,
        height: 750,
        child: Stack(
          children: [
            Positioned(
                left: 0,
                right: 0,
                child: Container(
                  width: double.maxFinite,
                  height: 300,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/mountain.jpeg'),
                        fit: BoxFit.cover),
                  ),
                )),
            Positioned(
                left: 20,
                top: 50,
                right: 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.menu),
                      color: Colors.white,
                    ),
                    const Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    ),
                  ],
                )),
            Positioned(
              top: 250,
              child: Container(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 30,
                ),
                width: MediaQuery.of(context).size.width,
                height: 500,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppLargeText(
                          size: 20,
                          text: 'Yosemite',
                          color: AppColors.bigTextColor,
                        ),
                        AppLargeText(
                            size: 20,
                            text: '\$260',
                            color: AppColors.mainColor),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: AppColors.mainColor,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        AppText(
                            size: 12,
                            text: 'USA, California',
                            color: AppColors.mainTextColor),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(5, (index) {
                            return Icon(
                              Icons.star,
                              color: index < gottenStars
                                  ? AppColors.starColor
                                  : AppColors.textColor2,
                            );
                          }),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        AppText(
                          size: 10,
                          text: '(4.0)',
                          color: AppColors.mainTextColor,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    AppLargeText(
                      size: 15,
                      text: 'People',
                      color: Colors.black.withOpacity(0.8),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    AppText(
                      size: 10,
                      text: 'Number of people in your group',
                      color: AppColors.mainTextColor,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Wrap(
                      children: List.generate(5, (index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.only(right: 10),
                            child: AppButtons(
                              color: selectedIndex == index
                                  ? Colors.white
                                  : Colors.black,
                              backgroundColor: selectedIndex == index
                                  ? Colors.black
                                  : AppColors.buttonBackground,
                              borderColor: selectedIndex == index
                                  ? Colors.black
                                  : AppColors.buttonBackground,
                              size: 50,
                              text: (index + 1).toString(),
                            ),
                          ),
                        );
                      }),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    AppLargeText(
                        size: 20,
                        text: 'Description',
                        color: Colors.black.withOpacity(0.8)),
                    const SizedBox(
                      height: 10,
                    ),
                    AppText(
                        size: 13,
                        text:
                            'You mush go for a travel. Travelling helps get rid of preassure. Go to the mountains to see the nature. Destress yourselves from your problems.',
                        color: AppColors.mainTextColor),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Positioned(
              left: 20,
              bottom: 50,
              right: 20,
              child: Row(
                children: [
                  AppButtons(
                    color: AppColors.mainColor,
                    backgroundColor: Colors.transparent,
                    borderColor: AppColors.mainColor,
                    size: 60,
                    icon: Icons.favorite_border_rounded,
                    isIcon: true,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  ResponsiveButton(
                    isResponsive: true,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
