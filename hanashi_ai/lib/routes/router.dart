import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hanashi_ai/pages/chat/chat_page.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: 'chat',
      pageBuilder: (context, state) => MaterialPage(
        // チャット画面
        child: const ChatPage(),
      ),
    ),
  ],
);
