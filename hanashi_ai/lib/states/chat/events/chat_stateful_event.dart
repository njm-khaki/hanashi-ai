import 'package:hanashi_ai/models/chat/chat_model.dart'; // チャットモデルをインポート
import 'package:hanashi_ai/states/chat/chat_member.dart'; // ChatMemberインターフェースをインポート
import 'package:hanashi_ai/usecase/stateful_usecase.dart'; // ライフサイクル用インターフェースをインポート

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

      // 初期状態をIdleに設定
      state = ChatModel.idle(
        text: """こんにちは！ハナシ・アイです！！
        このセリフをタップしてください。""",
        model: state.model,
      );
    } catch (error) {
      // エラー時はエラー状態に
      state = ChatModel.loadingError(model: state.model);
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
