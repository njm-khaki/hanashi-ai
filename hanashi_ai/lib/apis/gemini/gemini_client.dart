import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:hanashi_ai/apis/generate_ai_client.dart';
import 'package:logger/logger.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

final class GeminiClient extends GenerateAiClient {
  // シングルトンパターン
  // シングルトンインスタンス
  static final GeminiClient _instance = GeminiClient._internal();
  // ファクトリーコンストラクタ
  factory GeminiClient() => _instance;
  // プライベートコンストラクタ
  GeminiClient._internal();

  // ロガーインスタンス
  final Logger _logger = Logger();

  static final GenerativeModel _model = GenerativeModel(
    // 使用するGeminiモデル名を.envから取得
    model: dotenv.get('GEMINI_MODEL_NAME'),
    // APIキーを.envから取得
    apiKey: dotenv.get('GEMINI_API_KEY'),
  );

  // チャットセッション
  final ChatSession _session = _model.startChat();

  /// チャット メッセージ送信
  @override
  Future<String> sendMessage({required String message}) async {
    try {
      // チャットセッションにメッセージを送信
      final response = await _session.sendMessage(Content.text(message));

      _logger.d("Gemini API 回答: ${response.text}"); // レスポンスをデバッグ出力

      // レスポンスからテキストを抽出して返す
      return response.text ?? '';
    } on Exception catch (error) {
      _logger.e("Gemini API エラー: ${error.toString()}"); // エラーをログ出力
      rethrow;
    }
  }
}
