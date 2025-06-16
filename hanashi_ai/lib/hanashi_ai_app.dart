import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hanashi_ai/routes/router.dart';

/// アプリ全体のルートウィジェット
class HanashiAiApp extends StatelessWidget {
  const HanashiAiApp({super.key}); // コンストラクタ

  @override
  Widget build(BuildContext context) {
    // ProviderScopeを使ってRiverpodの状態管理を有効化
    return ProviderScope(
      // MaterialApp.routerを使ってルーティング対応のアプリを構築
      child: MaterialApp.router(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.indigo,
            // ダークテーマ
            brightness: Brightness.light,
          ),
          // フォントファミリーを設定
          fontFamily: 'Noto Sans JP',
        ),
        darkTheme: ThemeData(
          // プライマリカラー
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.indigo,
            // ダークテーマ
            brightness: Brightness.dark,
          ),
          // フォントファミリーを設定
          fontFamily: 'Noto Sans JP',
        ),
        // システムのテーマモードに従う
        themeMode: ThemeMode.system,
        // ルーターのデリゲート
        routerDelegate: router.routerDelegate,
        // ルート情報のパーサー
        routeInformationParser: router.routeInformationParser,
        // ルート情報のプロバイダー
        routeInformationProvider: router.routeInformationProvider,
      ),
    );
  }
}
