import 'package:flutter/material.dart';

class HerMessageBubble extends StatelessWidget {
  final String message;
  const HerMessageBubble({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 24, right: 64),
        child: Text(message, style: const TextStyle(fontSize: 14)),
      ),
    );
  }
}
