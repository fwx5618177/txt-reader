import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:txt_reader/config/color.dart';
import 'package:txt_reader/config/routes.dart';
import 'package:txt_reader/models/onboard.dart';
import 'package:txt_reader/utils/TextUtils.dart';

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
                return onBoardingItems(size, index);
              },
            ),
          ),
          GestureDetector(
            onTap: () {
              if (_currentIndex == onBoardData.length - 1) {
                Get.toNamed(AppRoutes.home);
              } else {
                _pageController.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.ease,
                );
              }
            },
            child: Container(
              height: 70,
              width: size.width * 0.6,
              decoration: BoxDecoration(
                color: AppColors.buttonColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  _currentIndex == onBoardData.length - 1
                      ? "Get Stared"
                      : "Continue",
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(
                onBoardData.length,
                (index) => indicatorForSlider(index: index),
              ),
            ],
          )
        ],
      ),
    );
  }

  AnimatedContainer indicatorForSlider({int? index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      width: _currentIndex == index ? 20 : 10,
      height: 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: _currentIndex == index
            ? Colors.orange
            : AppColors.black.withOpacity(0.2),
      ),
    );
  }

  Column onBoardingItems(Size size, int index) {
    return Column(
      children: [
        Container(
          height: size.height * 0.5,
          width: size.width * 0.9,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Stack(
            children: [
              Positioned(
                bottom: 0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Container(
                    height: 240,
                    width: size.width * 0.9,
                    color: AppColors.orangeContainer,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 5,
                          left: -40,
                          height: 130,
                          width: 130,
                          child: Transform.rotate(
                            angle: -11,
                            child:
                                SvgPicture.asset("assets/illustrations/paw.svg",
                                    colorFilter: ColorFilter.mode(
                                      AppColors.pawColor1,
                                      BlendMode.srcIn,
                                    )),
                          ),
                        ),
                        Positioned(
                          bottom: -20,
                          right: -20,
                          height: 130,
                          width: 130,
                          child: Transform.rotate(
                            angle: -12,
                            child:
                                SvgPicture.asset("assets/illustrations/paw.svg",
                                    colorFilter: ColorFilter.mode(
                                      AppColors.pawColor1,
                                      BlendMode.srcIn,
                                    )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 60,
                child: Image.asset(
                  onBoardData[index].image,
                  height: 375,
                  fit: BoxFit.fill,
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 30),
        Text.rich(
          TextSpan(
            children: TextUtils.parseText(
                onBoardData[index].title,
                TextStyle(
                  fontSize: 35,
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                ),
                TextStyle(
                  fontSize: 35,
                  color: Colors.lightBlue, // 强调部分的样式
                  fontWeight: FontWeight.w900,
                )),
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 10),
        Text(
          onBoardData[index].description,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 15.5,
            color: Colors.black38,
          ),
        )
      ],
    );
  }
}
