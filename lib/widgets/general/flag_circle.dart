import 'package:flutter/material.dart';

class FlagCircleIcon extends StatelessWidget {
  const FlagCircleIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12.0),
      child: Image.asset(
        'assets/image/flag_venezuela.png',
        width: 20,
        height: 20,
        fit: BoxFit.fitHeight,
      ),
    );
  }
}