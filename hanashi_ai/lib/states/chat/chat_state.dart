import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hanashi_ai/models/chat/chat_model.dart';
import 'package:hanashi_ai/states/chat/chat_member.dart';
import 'package:logger/logger.dart';

/// チャット画面の状態を管理するクラス
class ChatState extends Notifier<ChatModel> implements ChatMember {
  ChatState({
    // 初期値
    required this.init,
    // ロガー
    required this.logger,
  });

  /// 状態の初期値を返す
  @override
  ChatModel build() {
    init
        .sendMessage(message: "自己紹介してください")
        .then((value) => state = value)
        .catchError((error) {
          logger.e("メッセージ送信エラー: $error");
          state = state.copyWith(text: 'メッセージ送信に失敗しました。');
          return state;
        });

    return init;
  }

  /// チャットの初期メッセージ
  @override
  final ChatModel init;

  /// ロガーインスタンス
  @override
  final Logger logger;
}

/// チャット画面のプロバイダー
final chatProvider = NotifierProvider<ChatState, ChatModel>(
  () => ChatState(
    // 初期値
    init: ChatModel(text: 'Hello, Hanashi AI!'),
    logger: Logger(),
  ),
);
