import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hanashi_ai/enums/generate_ai/generate_ai.dart';
import 'package:hanashi_ai/utils/parse_generate_ai_text.dart';

part 'chat_model.freezed.dart';

@freezed
sealed class ChatModel with _$ChatModel {
  // freezedのプライベートコンストラクタ
  const ChatModel._() : super();

  // チャットモデルのファクトリ
  const factory ChatModel({
    // チャットテキスト
    required String text,
    // 生成AIモデル
    required GenerateAi model,
  }) = _ChatModel;

  // メッセージを送信し、レスポンスを受け取って新しいChatModelを返す
  Future<ChatModel> sendMessage({required String message}) async {
    final response = await model.client.sendMessage(message: message);

    return copyWith(text: parseGenerateAiText(response)); // レスポンスでtextを更新
  }
}
