import 'package:flutter_riverpod/flutter_riverpod.dart'; // Riverpodの状態管理ライブラリをインポート
import 'package:flutter_tts/flutter_tts.dart'; // テキスト読み上げライブラリをインポート
import 'package:hanashi_ai/enums/generate_ai/generate_ai.dart'; // 生成AIのenumをインポート
import 'package:hanashi_ai/models/chat/chat_model.dart'; // チャットモデルをインポート
import 'package:hanashi_ai/states/chat/chat_member.dart'; // ChatMemberインターフェースをインポート
import 'package:logger/logger.dart'; // ログ出力用ライブラリをインポート

/// チャット画面の状態を管理するクラス
class ChatState extends Notifier<ChatModel> implements ChatMember {
  ChatState({
    // 初期値
    this.init = const ChatModel(
      text: "Hello, Hanashi AI!",
      // 生成AIクライアント
      model: GenerateAi.gemini,
    ),
    // ロガー
    required this.logger,
  });

  // テキスト読み上げ用のインスタンス
  final FlutterTts _speaker = FlutterTts()
    ..setLanguage('ja-JP') // 日本語設定
    ..setVolume(0.7) // 音量設定
    ..setPitch(1.4) // ピッチ設定
    ..setSpeechRate(1.0); // 読み上げ速度設定

  /// 状態の初期値を返す
  @override
  ChatModel build() {
    // 初期メッセージをAIに送信し、結果をstateに反映＆読み上げ
    init
        .sendMessage(
          message: """
あなたは新入社員で受付担当をしている噺藍(ハナシ アイ)という人物です
来訪者を待たせている間に雑談をしてください

まずは、来訪者に対して自己紹介をお願いします""",
        )
        .then((value) async {
          state = value;
          _speaker.speak(value.text); // 返答を読み上げ
          return state;
        })
        .catchError((error) {
          logger.e("メッセージ送信エラー: $error"); // エラーをログ出力
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
    // ロガー
    logger: Logger(),
  ),
);
