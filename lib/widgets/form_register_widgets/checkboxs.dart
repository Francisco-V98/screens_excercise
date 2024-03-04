import 'package:flutter/material.dart';

class CheckboxDefault extends StatefulWidget {
  const CheckboxDefault({
    super.key,
  });

  @override
  State<CheckboxDefault> createState() => _CheckboxDefaultState();
}

class _CheckboxDefaultState extends State<CheckboxDefault> {
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.indigo,
      value: _isChecked,
      onChanged: (bool? value) {
        setState(() {
          _isChecked = value!;
        });
      },
    );
  }
}