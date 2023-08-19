import 'package:flutter/material.dart';

class ByeView extends StatelessWidget {
  const ByeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: const Text('bye'),
      ),
    );
  }
}
