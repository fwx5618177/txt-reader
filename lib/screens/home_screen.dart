import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:get/get.dart';
import '../services/txt_parser.dart';
import 'chapter_screen.dart';
import '../controllers/txt_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TxtController controller = Get.put(TxtController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('TXT Reader'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            FilePickerResult? result = await FilePicker.platform.pickFiles(
              type: FileType.custom,
              allowedExtensions: ['txt'],
            );
            if (result != null && result.files.single.path != null) {
              controller.loadFile(result.files.single.path!);
              Get.to(() => ChapterScreen());
            }
          },
          child: const Text('选择TXT文件'),
        ),
      ),
    );
  }
}
