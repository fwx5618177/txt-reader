import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:txt_reader/config/color.dart';
import 'package:txt_reader/config/constants.dart';
import 'package:txt_reader/config/routes.dart';

class AppTopBar extends StatelessWidget implements PreferredSizeWidget {
  const AppTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        AppConstants.appName,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
      backgroundColor: AppColors.appBarBackground,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.menu, color: Colors.white),
        onPressed: () {
          Get.toNamed(AppRoutes.detail);
        },
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.logout, color: Colors.white),
          onPressed: () {
            Get.toNamed(AppRoutes.onBoard);
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
