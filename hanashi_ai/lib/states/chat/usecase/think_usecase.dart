import 'package:hanashi_ai/states/chat/chat_member.dart';

abstract interface class ThinkUseCase implements ChatMember {
  // セリフ押下時の処理
  Future<void> onTapLine();
}
