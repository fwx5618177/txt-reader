import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_styled_text/flutter_styled_text.dart';
import '../controllers/txt_controller.dart';

class ContentScreen extends StatelessWidget {
  const ContentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TxtController controller = Get.find();

    return Scaffold(
      appBar: AppBar(
        title: const Text('正文'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: StyledText(
          text: controller.currentContent,
          style: const TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
