import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hanashi_ai/pages/chat/templates/chat_content.dart';
import 'package:hanashi_ai/states/chat/chat_state.dart';

/// チャット画面
class ChatPage extends ConsumerStatefulWidget {
  // Riverpod対応のStatefulWidget
  // コンストラクタ
  const ChatPage({super.key});

  @override
  ConsumerState<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends ConsumerState<ChatPage>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    // ライフサイクル監視を追加
    WidgetsBinding.instance.addObserver(this);
    // 初期化処理を実行
    final notifier = ref.read(chatProvider.notifier);
    notifier.onInitState();
  }

  @override
  void dispose() {
    super.dispose();
    // ライフサイクル監視を解除
    WidgetsBinding.instance.removeObserver(this);
    // 破棄時の処理を実行
    final notifier = ref.read(chatProvider.notifier);
    notifier.onDispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // アプリのライフサイクル状態が変化したときの処理
    final notifier = ref.read(chatProvider.notifier);
    notifier.onChangeAppLifecycleState(state);
  }

  @override
  Widget build(BuildContext context) {
    // チャットの状態を取得
    final state = ref.watch(chatProvider);

    // 画面のUIを構築
    return Scaffold(
      // アプリバーのタイトル
      appBar: AppBar(
        title: const Text('Hanashi AI'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      // チャットのコンテンツを表示
      body: ChatContent(state: state),
    );
  }
}
