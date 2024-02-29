import 'package:flutter/material.dart';
import 'package:screens_excercise/widgets/bottomsheet_widgets/widgets_bottomsheet.dart';
import 'package:screens_excercise/widgets/general/widgets.dart';

class BottomSheetPractice extends StatelessWidget {
  const BottomSheetPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarNew(
        title: 'BottomSheet',
        leadingIcon: Icons.arrow_back_ios,
      ),
      body: _Body(),
    );
  }
}

class _Body extends StatefulWidget {
  const _Body();

  @override
  State<_Body> createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  Color bgColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: bgColor,
        ),
        Center(
          child: ElevatedButton(
            onPressed: () {
              bottomSheet(context);
            },
            child: const Text('Abrir BottomSheet'),
          ),
        ),
      ],
    );
  }

  Future<dynamic> bottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 600,
          width: double.infinity,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24),
              topRight: Radius.circular(24),
            ),
          ),
          child: ContentBottomSheet(changeBgColor),
        );
      },
    );
  }

  void changeBgColor(Color color) {
    setState(() {
      bgColor = color;
    });
  }
}
