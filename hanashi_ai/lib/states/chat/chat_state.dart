import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:hanashi_ai/enums/generate_ai/generate_ai.dart';
import 'package:hanashi_ai/models/chat/chat_model.dart';
import 'package:hanashi_ai/states/chat/events/chat_app_lifecycle_event.dart';
import 'package:hanashi_ai/states/chat/events/chat_stateful_event.dart';
import 'package:logger/logger.dart';

/// チャット画面の状態を管理するクラス
class ChatState extends Notifier<ChatModel>
    with ChatAppLifecycleEvent, ChatStatefulEvent {
  ChatState({
    // 初期値
    this.init = const ChatModel(
      text: "Hi, I am Hanashi AI!",
      // 生成AIクライアント
      model: GenerateAi.gemini,
    ),
    // ロガー
    required this.logger,
  });

  // テキスト読み上げ用のインスタンス
  @override
  final FlutterTts speaker = FlutterTts();

  /// 状態の初期値を返す
  @override
  ChatModel build() => init;

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
    // ロガー
    logger: Logger(),
  ),
);
