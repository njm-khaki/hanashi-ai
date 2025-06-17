import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hanashi_ai/hanashi_ai_app.dart';

void main() async {
  // 環境変数ファイルを読み込み
  await dotenv.load(fileName: 'env');
  // アプリのエントリーポイント。HanashiAiAppウィジェットを起動
  runApp(const HanashiAiApp());
}
