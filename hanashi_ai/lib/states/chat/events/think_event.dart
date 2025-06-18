import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hanashi_ai/models/chat/chat_model.dart';
import 'package:hanashi_ai/states/chat/usecase/think_usecase.dart';
import 'package:hanashi_ai/utils/trim_brackets.dart';

abstract mixin class ThinkEvent implements ThinkUseCase {
  /// セリフ押下時の処理
  @override
  Future<void> onTapLine() async {
    if (state is! Idle && state is! Speech) {
      speaker.stop();
      return;
    }

    state = ChatModel.thinking(model: state.model);

    try {
      state = await state.sendMessage(message: dotenv.get("INITIALIZE_PROMPT"));
      if (state is! Speech) {
        throw Exception("Failed to transition to Idle state after thinking.");
      }

      final speech = state as Speech;
      await speaker.speak(trimBrackets(speech.text));
      state = Idle(text: speech.text, model: speech.model);
    } catch (error) {
      state = ChatModel.panic(model: state.model);
      rethrow;
    }
  }
}
