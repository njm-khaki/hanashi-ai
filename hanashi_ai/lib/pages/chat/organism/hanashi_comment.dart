import 'package:flutter/material.dart';
import 'package:hanashi_ai/models/chat/chat_model.dart';
import 'package:hanashi_ai/pages/chat/molecules/chat_text.dart';
import 'package:hanashi_ai/pages/chat/molecules/hanashi_icon.dart';
import 'package:hanashi_ai/states/chat/events/think_event.dart';

// ハナシ・アイの発言行ウィジェット
class HanashiComment extends StatelessWidget {
  const HanashiComment({
    super.key,
    required this.state,
    required this.notifier,
  });

  // 発言テキスト
  final ChatModel state;
  final ThinkEvent notifier;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: switch (state) {
        // 押下時の処理
        Idle() || Panic() => notifier.onTapLine,
        // 他の状態では何もしない
        _ => null,
      },
      child: Padding(
        padding: EdgeInsetsGeometry.all(8.0),
        child: Row(
          children: [
            // アイコン画像
            HanashiIcon(),
            // チャットテキスト表示
            ChatText(
              text: switch (state) {
                Idle idle => idle.text,
                Speech speech => speech.text,
                Loading() => 'now Loading...',
                LoadingError() => '初期化エラー もう一度試してください',
                Thinking() => '考え中...',
                Panic() => 'パニック状態です。もう一度試してください',
              },
            ),
          ],
        ),
      ),
    );
  }
}
