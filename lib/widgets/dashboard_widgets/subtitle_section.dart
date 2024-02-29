import 'package:flutter/material.dart';

class SubtitleSection extends StatelessWidget {
  final String text;
  const SubtitleSection({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.black.withOpacity(0.4),
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
