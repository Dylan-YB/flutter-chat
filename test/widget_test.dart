import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_chat_app/main.dart';

void main() {
  testWidgets('Muestra la conversación y permite enviar mensajes',
      (tester) async {
    await tester.pumpWidget(const ChatApp());
    expect(find.text('Dhillan Yoli'), findsOneWidget);
    expect(find.text('Mi primer mensaje'), findsWidgets);
    await tester.enterText(find.byType(TextField), 'Hola Flutter');
    await tester.tap(find.byTooltip('Enviar mensaje'));
    await tester.pumpAndSettle();
    expect(find.text('Hola Flutter'), findsOneWidget);
  });
}
