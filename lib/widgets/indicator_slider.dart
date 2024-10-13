import 'package:flutter/material.dart';
import 'package:txt_reader/config/color.dart';

class IndicatorSlider extends StatelessWidget {
  final int currentIndex;
  final int totalCount;

  const IndicatorSlider({
    super.key,
    required this.currentIndex,
    required this.totalCount,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        totalCount,
        (index) => AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          width: currentIndex == index ? 20 : 10,
          height: 10,
          margin: const EdgeInsets.only(right: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: currentIndex == index
                ? Colors.orange
                : AppColors.black.withOpacity(0.2),
          ),
        ),
      ),
    );
  }
}
