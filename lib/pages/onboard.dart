import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:txt_reader/config/color.dart';
import 'package:txt_reader/config/routes.dart';
import 'package:txt_reader/models/onboard.dart';
import 'package:txt_reader/utils/text_utils.dart';
import 'package:txt_reader/widgets/indicator_slider.dart';
import 'package:txt_reader/widgets/onboard_action_button.dart';
import 'package:txt_reader/widgets/onboarding_items.dart';

class OnBoardPage extends StatefulWidget {
  const OnBoardPage({super.key});

  @override
  State<OnBoardPage> createState() => _OnBoardPageState();
}

class _OnBoardPageState extends State<OnBoardPage> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.onboardBackgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: size.height * 0.8,
            color: Colors.white,
            child: PageView.builder(
              itemCount: onBoardData.length,
              onPageChanged: (value) => {
                setState(() {
                  _currentIndex = value;
                })
              },
              controller: _pageController,
              itemBuilder: (BuildContext context, int index) {
                return OnBoardingItems(size: size, index: index);
              },
            ),
          ),
          OnBoardActionButton(
            currentIndex: _currentIndex,
            totalIndex: onBoardData.length,
            onNext: () {
              if (_currentIndex == onBoardData.length - 1) {
                Get.toNamed(AppRoutes.home);
              } else {
                _pageController.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.ease,
                );
              }
            },
          ),
          const SizedBox(
            height: 20,
          ),
          IndicatorSlider(
            currentIndex: _currentIndex,
            totalCount: onBoardData.length,
          ),
        ],
      ),
    );
  }
}
