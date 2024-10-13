import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const TxtReaderApp());
}

class TxtReaderApp extends StatelessWidget {
  const TxtReaderApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'TXT Reader',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Schyler', // 使用配置的字体
      ),
      home: const HomeScreen(),
    );
  }
}
