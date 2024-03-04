import 'package:flutter/material.dart';

class TextfieldImput extends StatelessWidget {
  final String hint;
  final double height;

  const TextfieldImput({
    super.key,
    required this.hint,
    this.height = 48,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      // color: Colors.red.withOpacity(0.3),
      child: TextField(
        expands: true,
        maxLines: null,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.indigo, width: 2),
            borderRadius: BorderRadius.circular(8),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey, width: 1.5),
            borderRadius: BorderRadius.circular(8),
          ),
          hintText: hint,
          alignLabelWithHint: true,
          contentPadding:
              EdgeInsets.only(top: 12, left: 12, bottom: height - 30),
        ),
      ),
    );
  }
}