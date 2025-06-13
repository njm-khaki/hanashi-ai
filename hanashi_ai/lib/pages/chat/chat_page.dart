import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hanashi_ai/states/chat/chat_state.dart';

/// チャット画面
class ChatPage extends ConsumerWidget {
  // Riverpod対応のStatelessWidget
  const ChatPage({super.key}); // コンストラクタ

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // チャットの状態を取得
    final state = ref.watch(chatProvider);

    // 画面のUIを構築
    return Scaffold(
      // アプリバーのタイトル
      appBar: AppBar(
        title: const Text('Hanashi AI'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        // UI テンプレート
        child: Text(state.text), // 中央にテキストを表示
      ),
    );
  }
}
