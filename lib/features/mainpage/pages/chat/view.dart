import 'package:flutter/material.dart';
import 'package:food_ninja/core/design/customcolumn/view.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Column(
      children: [CustomCoulmnView(title: 'Chat', subtitle: '')],
    ));
  }
}
