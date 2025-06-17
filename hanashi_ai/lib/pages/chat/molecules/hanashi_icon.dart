import 'package:flutter/material.dart';

// ハナシ・アイのアイコン画像ウィジェット
class HanashiIcon extends StatelessWidget {
  const HanashiIcon({super.key});

  @override
  Widget build(BuildContext context) {
    // アイコン画像
    return Padding(
      padding: EdgeInsetsGeometry.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(60.0),
        child: Image.asset(
          'assets/images/hanashi_ai_icon.jpg',
          width: 60.0,
          height: 60.0,
        ),
      ),
    );
  }
}
