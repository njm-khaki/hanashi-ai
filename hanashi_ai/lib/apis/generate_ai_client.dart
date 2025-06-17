/// 生成AI API クライアントの抽象クラス
abstract class GenerateAiClient {
  /// チャット メッセージ送信
  Future<String> sendMessage({required String message});
}
