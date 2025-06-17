import 'package:flutter/material.dart';
import 'package:hanashi_ai/pages/chat/molecules/chat_text.dart';
import 'package:hanashi_ai/pages/chat/molecules/hanashi_icon.dart';

// ハナシ・アイの発言行ウィジェット
class HanashiComment extends StatelessWidget {
  const HanashiComment({super.key, required this.text});

  // 発言テキスト
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.all(8.0),
      child: Row(
        children: [
          // アイコン画像
          HanashiIcon(),
          // チャットテキスト表示
          ChatText(text: text),
        ],
      ),
    );
  }
}
