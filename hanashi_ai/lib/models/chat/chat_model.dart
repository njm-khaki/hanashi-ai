import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hanashi_ai/enums/generate_ai/generate_ai.dart';
import 'package:hanashi_ai/utils/parse_generate_ai_text.dart';

part 'chat_model.freezed.dart';

@freezed
sealed class ChatModel with _$ChatModel {
  // freezedのプライベートコンストラクタ
  const ChatModel._() : super();

  const factory ChatModel.loading({
    // 生成AIモデル
    required GenerateAi model,
  }) = Loading;

  const factory ChatModel.loadingError({
    // 生成AIモデル
    required GenerateAi model,
  }) = LoadingError;

  // チャットモデルのファクトリ
  const factory ChatModel.idle({
    // チャットテキスト
    required String text,
    // 生成AIモデル
    required GenerateAi model,
  }) = Idle;

  // チャットモデルのファクトリ
  const factory ChatModel.thinking({
    // 生成AIモデル
    required GenerateAi model,
  }) = Thinking;

  const factory ChatModel.panic({
    // 生成AIモデル
    required GenerateAi model,
  }) = Panic;

  const factory ChatModel.speech({
    // チャットテキスト
    required String text,
    // 生成AIモデル
    required GenerateAi model,
  }) = Speech;

  // メッセージを送信し、レスポンスを受け取って新しいChatModelを返す
  Future<ChatModel> sendMessage({required String message}) async {
    try {
      final response = await model.client.sendMessage(message: message);

      return ChatModel.speech(
        // レスポンスでtextを更新
        text: parseGenerateAiText(response),
        model: model,
      );
    } catch (error) {
      return ChatModel.loadingError(model: model);
    }
  }
}
