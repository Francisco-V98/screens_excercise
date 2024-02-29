import 'package:flutter/material.dart';
import 'package:screens_excercise/widgets/bottomsheet_widgets/widgets_bottomsheet.dart';

class ContentBottomSheet extends StatelessWidget {
  final Function(Color) bgColor;

  const ContentBottomSheet(this.bgColor, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          titleBottomSheet(),
          const SizedBox(height: 40),
          Wrap(
            spacing: 20,
            runSpacing: 20,
            children: [
              ContainerColorBottomSheets(color: Colors.red, bgColor: bgColor),
              ContainerColorBottomSheets(color: Colors.green, bgColor: bgColor),
              ContainerColorBottomSheets(color: Colors.purple, bgColor: bgColor),
              ContainerColorBottomSheets(color: Colors.orange, bgColor: bgColor),
              ContainerColorBottomSheets(color: Colors.blue, bgColor: bgColor),
              ContainerColorBottomSheets(color: Colors.grey, bgColor: bgColor),
              ContainerColorBottomSheets(color: Colors.indigo, bgColor: bgColor),
              ContainerColorBottomSheets(color: Colors.cyan, bgColor: bgColor),
              ContainerColorBottomSheets(color: Colors.brown, bgColor: bgColor),
            ],
          ),
        ],
      ),
    );
  }

  Text titleBottomSheet() {
    return const Text(
      'Elegir un Color',
      style: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 24,
      ),
    );
  }
}
