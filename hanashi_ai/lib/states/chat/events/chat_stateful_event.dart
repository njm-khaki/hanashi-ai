import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hanashi_ai/states/chat/chat_member.dart';
import 'package:hanashi_ai/usecase/stateful_usecase.dart';
import 'package:hanashi_ai/utils/trim_brackets.dart';

// チャット状態のライフサイクルイベント用mixin
abstract mixin class ChatStatefulEvent implements StatefulUsecase, ChatMember {
  @override
  Future<void> onInitState() async {
    logger.d("run on init state");

    try {
      // 日本語設定
      await speaker.setLanguage('ja-JP');
      // 音量設定
      await speaker.setVolume(0.7);
      // ピッチ設定
      await speaker.setPitch(1.4);
      // 読み上げ速度設定
      await speaker.setSpeechRate(1.0);

      // 初期メッセージをAIに送信し、結果をstateに反映＆読み上げ
      logger.d("初期化メッセージを送信: ${dotenv.get("INITIALIZE_PROMPT")}");
      final response = await state.sendMessage(
        message: dotenv.get("INITIALIZE_PROMPT"),
      );

      state = response;
      // 返答を読み上げ
      await speaker.speak(trimBrackets(response.text));
    } on Exception catch (error) {
      // エラーが発生した場合の処理
      logger.e("初期化エラー: $error"); // エラーをログ出力
      final message = '初期化に失敗しました。';
      state = state.copyWith(text: message);
      // エラーメッセージを読み上げ
      speaker.speak(message);
      rethrow;
    }
  }

  // 破棄時の処理
  @override
  Future<void> onDispose() async {
    logger.d("run on dispose");
    // テキスト読み上げを停止
    await speaker.stop();
  }
}
