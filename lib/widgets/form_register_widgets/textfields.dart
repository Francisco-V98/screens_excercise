import 'package:flutter/material.dart';

class TextfieldImput extends StatefulWidget {
  final Function(String value) onChanged;

  final String hint;
  final double height;

  const TextfieldImput({
    super.key,
    required this.hint,
    this.height = 48,
    required this.onChanged, 
  });

  @override
  State<TextfieldImput> createState() => _TextfieldImputState();
}

class _TextfieldImputState extends State<TextfieldImput> {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      child: TextField(
        controller: _controller,
        onChanged: widget.onChanged,
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
          hintText: widget.hint,
          alignLabelWithHint: true,
          contentPadding:
              EdgeInsets.only(top: 12, left: 12, bottom: widget.height - 30),
        ),
      ),
    );
  }
}
