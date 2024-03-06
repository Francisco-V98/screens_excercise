import 'package:flutter/material.dart';

class DropdownDefault extends StatefulWidget {
  final Function(String? value)? onChanged;
  final String hint; 
  final List<String> listDropdown;
  const DropdownDefault({
    super.key,
    required this.hint,
    required this.listDropdown,
    this.onChanged,
  });

  @override
  State<DropdownDefault> createState() => _DropdownDefaultState();
}

class _DropdownDefaultState extends State<DropdownDefault> {
  String? dropdownValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        border: Border.all(width: 1.5, color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      child: DropdownButton<String>(
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        menuMaxHeight: 300,
        underline: Container(height: 0),
        hint: Text(widget.hint),
        isExpanded: true,
        icon: const Icon(Icons.arrow_drop_down),
        value: dropdownValue,
        // onChanged: widget.onChanged,
        onChanged: (String? newValue) {
          dropdownValue = newValue!;
          // widget.onChanged => () newValue;
          widget.onChanged?.call(newValue);
          setState(() {});
        },
        items:
            widget.listDropdown.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
