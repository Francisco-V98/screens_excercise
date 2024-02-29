import 'package:flutter/material.dart';
import 'package:screens_excercise/widgets/bottomsheet_widgets/widgets_bottomsheet.dart';


class GroupContainersBottomSheet extends StatelessWidget {
  const GroupContainersBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Wrap(
      spacing: 20,
      runSpacing: 20,
      children: [
        ContainerColorBottomSheet(color: Colors.red),
        ContainerColorBottomSheet(color: Colors.green),
        ContainerColorBottomSheet(color: Colors.purple),
        ContainerColorBottomSheet(color: Colors.orange),
        ContainerColorBottomSheet(color: Colors.blue),
        ContainerColorBottomSheet(color: Colors.grey),
        ContainerColorBottomSheet(color: Colors.indigo),
        ContainerColorBottomSheet(color: Colors.cyan),
        ContainerColorBottomSheet(color: Colors.brown),
      ],
    );
  }
}