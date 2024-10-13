import 'package:flutter/material.dart';
import 'package:txt_reader/config/color.dart';

class OnBoardActionButton extends StatelessWidget {
  final int currentIndex;
  final int totalIndex;
  final VoidCallback onNext;

  const OnBoardActionButton({
    super.key,
    required this.currentIndex,
    required this.totalIndex,
    required this.onNext,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: onNext,
      child: Container(
        height: size.height * 0.1,
        width: size.width * 0.6,
        decoration: BoxDecoration(
          color: AppColors.buttonColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            currentIndex == totalIndex - 1 ? "Get Started" : "Continue",
            style: const TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
