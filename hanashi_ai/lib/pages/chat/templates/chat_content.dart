import 'package:flutter/material.dart';
import 'package:hanashi_ai/models/chat/chat_model.dart';
import 'package:hanashi_ai/pages/chat/organism/hanashi_comment.dart';
import 'package:hanashi_ai/states/chat/chat_state.dart';

// チャット画面のメインコンテンツ
class ChatContent extends StatelessWidget {
  const ChatContent({super.key, required this.state, required this.notifier});

  // チャットの状態
  final ChatModel state;
  final ChatState notifier;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        // コメントを表示
        HanashiComment(state: state, notifier: notifier),
      ],
    );
  }
}
