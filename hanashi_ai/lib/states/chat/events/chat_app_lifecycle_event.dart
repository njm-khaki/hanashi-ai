import 'package:flutter/material.dart';
import 'package:hanashi_ai/states/chat/chat_member.dart';
import 'package:hanashi_ai/usecase/lifecycle_uscase.dart';
import 'package:hanashi_ai/utils/trim_brackets.dart';

// アプリのライフサイクルイベント用mixin
abstract mixin class ChatAppLifecycleEvent
    implements LifecycleUseCase, ChatMember {
  // アプリのライフサイクル状態変更時の処理
  @override
  Future<void> onChangeAppLifecycleState(AppLifecycleState lifeCycle) async {
    logger.d("on change app lifecycleState: $lifeCycle");
    if (lifeCycle == AppLifecycleState.resumed) {
      // 現在のテキストを読み上げ
      speaker.speak(trimBrackets(state.text));
      return;
    }
    if (lifeCycle == AppLifecycleState.inactive) {
      // アプリがバックグラウンドに移行したときの処理
      logger.d("アプリがバックグラウンドに移行しました");
      // 必要なクリーンアップ処理をここに追加
      // 読み上げを一時停止
      speaker.pause();
      return;
    }
  }
}
