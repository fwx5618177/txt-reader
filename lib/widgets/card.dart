import 'package:flutter/material.dart';
import 'package:txt_reader/config/color.dart';
import 'package:txt_reader/config/size.dart';

class BoxCard extends StatelessWidget {
  const BoxCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      decoration: BoxDecoration(
        color: AppColors.cardBoxBackground,
        borderRadius: AppSize.cardBoxBorderRadius,
      ),
      padding: AppSize.cardBoxPadding,
      child: const Icon(
        Icons.home,
        color: Colors.white,
        size: 64,
      ),
    );
  }
}
