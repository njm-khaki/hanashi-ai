import 'package:flutter_riverpod/flutter_riverpod.dart'; // RiverpodのNotifierをインポート
import 'package:flutter_tts/flutter_tts.dart'; // テキスト読み上げライブラリをインポート
import 'package:hanashi_ai/models/chat/chat_model.dart'; // チャットモデルをインポート
import 'package:logger/logger.dart'; // ログ出力用ライブラリをインポート

/// チャットメンバーのインターフェース（抽象クラス）
abstract interface class ChatMember implements Notifier<ChatModel> {
  /// コンストラクタ（初期値とロガー、TTSを受け取る）
  ChatMember({required this.init, required this.logger, required this.speaker});

  /// チャットの初期メッセージ
  final ChatModel init;

  /// ロガーインスタンス
  final Logger logger;

  /// テキスト読み上げインスタンス
  final FlutterTts speaker;
}
