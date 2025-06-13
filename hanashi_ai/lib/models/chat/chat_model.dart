import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hanashi_ai/apis/gemini/gemini_client.dart';

part 'chat_model.freezed.dart';

@freezed
sealed class ChatModel with _$ChatModel {
  const ChatModel._();

  const factory ChatModel({required String text}) = _ChatModel;

  Future<ChatModel> sendMessage({required String message}) async {
    final response = await GeminiClient().sendMessage(message: message);

    return copyWith(text: response);
  }
}
