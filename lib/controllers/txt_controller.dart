import 'package:get/get.dart';
import '../services/txt_parser.dart';

class TxtController extends GetxController {
  var chapters = <String>[].obs;
  var currentChapterIndex = 0.obs;

  String get currentContent => chapters.isNotEmpty ? chapters[currentChapterIndex.value] : '';

  void loadFile(String filePath) async {
    chapters.value = await TxtParser.parseTxtFile(filePath);
  }

  void setCurrentChapter(int index) {
    currentChapterIndex.value = index;
  }
}
