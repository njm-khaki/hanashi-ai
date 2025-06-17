import 'package:flutter/material.dart';

// アプリのライフサイクル状態変更用インターフェース
abstract interface class LifecycleUseCase {
  /// アプリのライフサイクル状態変更時の処理
  Future<void> onChangeAppLifecycleState(AppLifecycleState lifeCycle);
}
