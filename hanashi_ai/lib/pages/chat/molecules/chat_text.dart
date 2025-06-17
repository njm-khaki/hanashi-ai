import 'package:flutter/material.dart';

// チャットテキストのバブル表示ウィジェット
class ChatText extends StatelessWidget {
  const ChatText({super.key, required this.text});

  // 表示するテキスト
  final String text;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        // チャットバブルの装飾
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(8.0),
        ),
        padding: const EdgeInsets.all(8.0),
        // チャットのテキストを表示
        child: Text(
          text,
          style: TextStyle(color: Theme.of(context).colorScheme.onSecondary),
        ),
      ),
    );
  }
}
