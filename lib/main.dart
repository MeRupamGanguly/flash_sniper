import 'package:flash_sniper/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FlashSniper());
}

class FlashSniper extends StatelessWidget {
  const FlashSniper({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Flash Sniper",
      home: HomePage(),
    );
  }
}
