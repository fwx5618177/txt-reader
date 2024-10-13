import 'dart:io';

class TxtParser {
  static Future<List<String>> parseTxtFile(String filePath) async {
    String content = await File(filePath).readAsString();
    RegExp chapterExp = RegExp(r'第.{1,4}章');
    List<String> chapters = content.split(chapterExp);
    return chapters.where((chapter) => chapter.isNotEmpty).toList();
  }
}
