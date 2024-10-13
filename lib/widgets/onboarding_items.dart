import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:txt_reader/config/color.dart';
import 'package:txt_reader/models/onboard.dart';
import 'package:txt_reader/utils/text_utils.dart';

class OnBoardingItems extends StatelessWidget {
  final Size size;
  final int index;

  const OnBoardingItems({super.key, required this.size, required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: size.height * 0.4,
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
                    height: size.height * 0.25, // 动态高度
                    width: size.width * 0.9,
                    color: AppColors.orangeContainer,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 5,
                          left: -40,
                          height: size.height * 0.15, // 动态调整尺寸
                          width: size.height * 0.15,
                          child: Transform.rotate(
                            angle: -11,
                            child: SvgPicture.asset(
                              "assets/illustrations/paw.svg",
                              colorFilter: ColorFilter.mode(
                                AppColors.pawColor1,
                                BlendMode.srcIn,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: -20,
                          right: -20,
                          height: size.height * 0.15, // 动态调整尺寸
                          width: size.height * 0.15,
                          child: Transform.rotate(
                            angle: -12,
                            child: SvgPicture.asset(
                              "assets/illustrations/paw.svg",
                              colorFilter: ColorFilter.mode(
                                AppColors.pawColor1,
                                BlendMode.srcIn,
                              ),
                            ),
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
                  height: size.height * 0.35, // 动态高度调整
                  fit: BoxFit.contain, // 避免图片被裁剪
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 30),
        Text.rich(
          TextSpan(
            children: TextUtils.parseText(
              onBoardData[index].title,
              TextStyle(
                fontSize: size.height * 0.045, // 动态字体大小
                color: Colors.black,
                fontWeight: FontWeight.w900,
              ),
              TextStyle(
                fontSize: size.height * 0.045, // 动态字体大小
                color: Colors.lightBlue, // 强调部分的样式
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 10),
        Text(
          onBoardData[index].description,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: size.height * 0.02, // 动态字体大小
            color: Colors.black38,
          ),
        ),
      ],
    );
  }
}
