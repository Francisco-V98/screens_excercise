import 'package:flutter/material.dart';

// class ContainerColorBottomSheet extends StatefulWidget {
//   final Color color;
//   final Function(Color) bgColor;
//   const ContainerColorBottomSheet({
//     super.key,
//     required this.color,
//     required this.bgColor,
//   });

//   @override
//   State<ContainerColorBottomSheet> createState() =>
//       _ContainerColorBottomSheetState();
// }

// class _ContainerColorBottomSheetState extends State<ContainerColorBottomSheet> {
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         Container(
//           width: 70,
//           height: 70,
//           decoration: BoxDecoration(
//             color: widget.color,
//             borderRadius: const BorderRadius.all(Radius.circular(8)),
//             border: Border.all(
//               color: Colors.black.withOpacity(0.1),
//               width: 5,
//             ),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.black.withOpacity(0.3),
//                 offset: const Offset(0, 4),
//                 blurRadius: 8,
//               )
//             ],
//           ),
//         ),
//         Positioned.fill(
//           child: Material(
//             color: Colors.transparent,
//             child: InkWell(
//               onTap: () {
//                 setState(() {
//                   widget.bgColor(widget.color);
//                 });
//                 Navigator.pop(context);
//               },
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

class ContainerColorBottomSheets extends StatelessWidget {
  final Color color;
  final Function(Color) bgColor;
  const ContainerColorBottomSheets({
    super.key,
    required this.color,
    required this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            border: Border.all(
              color: Colors.black.withOpacity(0.1),
              width: 5,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                offset: const Offset(0, 4),
                blurRadius: 8,
              )
            ],
          ),
        ),
        Positioned.fill(
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                bgColor(color);
                Navigator.pop(context);
              },
            ),
          ),
        ),
      ],
    );
  }
}
