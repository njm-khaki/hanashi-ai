import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_model.freezed.dart';

@freezed
sealed class ChatModel with _$ChatModel {
  const factory ChatModel({required String text}) = _ChatModel;
}
