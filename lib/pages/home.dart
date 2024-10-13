import 'package:flutter/material.dart';
import 'package:txt_reader/config/color.dart';
import 'package:txt_reader/widgets/app_bottom_navigation_bar.dart';
import 'package:txt_reader/widgets/app_top_bar.dart';
import 'package:txt_reader/widgets/card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppTopBar(),
      bottomNavigationBar: AppBottomNavigationBar(),
      body: const Center(
        child: BoxCard(),
      ),
    );
  }
}
