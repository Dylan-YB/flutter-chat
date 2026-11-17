import 'package:flutter/material.dart';
import 'package:flutter_chat_app/config/theme/app_theme.dart';
import 'package:flutter_chat_app/presentation/screens/chat/chat_screen.dart';

void main() => runApp(const ChatApp());

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App - Chat',
      debugShowCheckedModeBanner: false,
      theme: AppTheme().theme(),
      home: const ChatScreen(),
    );
  }
}
