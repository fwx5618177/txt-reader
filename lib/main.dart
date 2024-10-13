import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:txt_reader/config/constants.dart';
import 'package:txt_reader/config/routes.dart';

void main() {
  runApp(const TxtReaderApp());
}

class TxtReaderApp extends StatelessWidget {
  const TxtReaderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: AppConstants.appName,
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.onBoard,
      getPages: AppPages.routes,
      defaultTransition: Transition.fade,
    );
  }
}
