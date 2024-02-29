import 'package:flutter/material.dart';
import 'package:screens_excercise/widgets/bottomsheet_widgets/widgets_bottomsheet.dart';


class ContentBottomSheet extends StatelessWidget {
  const ContentBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          titleBottomSheet(),
          const SizedBox(height: 40),
          const GroupContainersBottomSheet(),
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