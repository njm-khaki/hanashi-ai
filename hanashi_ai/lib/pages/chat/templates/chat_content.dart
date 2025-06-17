import 'package:flutter/material.dart';
import 'package:hanashi_ai/models/chat/chat_model.dart';
import 'package:hanashi_ai/pages/chat/organism/hanashi_comment.dart';

// チャット画面のメインコンテンツ
class ChatContent extends StatelessWidget {
  const ChatContent({super.key, required this.state});

  // チャットの状態
  final ChatModel state;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        // ハナシ・アイの発言
        HanashiComment(text: state.text),
      ],
    );
  }
}
