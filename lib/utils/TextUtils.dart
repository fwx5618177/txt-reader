import 'package:flutter/material.dart';

/// 文本处理工具类，包含解析和强调文本的功能
class TextUtils {
  /// 解析输入的 [text]，查找被 {{key}} 包裹的子字符串，
  /// 并返回一个 [TextSpan] 列表，其中包含普通文本样式和强调文本样式。
  ///
  /// [normalStyle] 应用于普通文本（即不在 {{key}} 内的文本）。
  /// [highlightStyle] 应用于 {{key}} 内的文本。
  ///
  /// 示例输入: 'This is a {{highlighted}} text.'
  /// 输出: [TextSpan(text: 'This is a ', style: normalStyle),
  ///          TextSpan(text: 'Highlighted', style: highlightStyle),  // 首字母大写
  ///          TextSpan(text: ' text.', style: normalStyle)]
  static List<TextSpan> parseText(
      String text, TextStyle normalStyle, TextStyle highlightStyle) {
    List<TextSpan> spans = []; // 存储最终的 TextSpans 列表
    final regex = RegExp(r'{{(.*?)}}'); // 匹配 {{key}} 的正则表达式
    int start = 0;

    // 遍历所有匹配的 {{key}} 部分
    for (final match in regex.allMatches(text)) {
      // 添加匹配前的普通文本
      if (match.start > start) {
        spans.add(TextSpan(
            text: text.substring(start, match.start), style: normalStyle));
      }
      // 添加匹配到的 {{key}} 部分，首字母大写并应用强调样式
      String highlightedText = capitalize(match.group(1)!); // 将匹配内容首字母大写
      spans.add(TextSpan(text: highlightedText, style: highlightStyle));
      // 更新开始位置为当前匹配结束位置
      start = match.end;
    }

    // 添加最后一段普通文本（如果有的话）
    if (start < text.length) {
      spans.add(TextSpan(text: text.substring(start), style: normalStyle));
    }

    return spans; // 返回 TextSpans 列表
  }

  /// 将字符串的首字母大写，其余部分小写
  static String capitalize(String text) {
    if (text.isEmpty) return text; // 处理空字符串情况
    return text[0].toUpperCase() + text.substring(1).toLowerCase();
  }
}
