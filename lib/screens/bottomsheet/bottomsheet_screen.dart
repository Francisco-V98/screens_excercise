import 'package:flutter/material.dart';
import 'package:screens_excercise/widgets/bottomsheet_widgets/widgets_bottomsheet.dart';

class BottomSheetPractice extends StatelessWidget {
  const BottomSheetPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: appBarNew(),
      body: const _Body(),
    );
  }

  AppBar appBarNew() {
    return AppBar(
      centerTitle: true,
      title: const Text('BottomSheet'),
      titleTextStyle: const TextStyle(
        fontWeight: FontWeight.w500,
        color: Colors.black,
        fontSize: 24,
      ),
      leading: const Icon(Icons.arrow_back_ios),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          bottomSheet(context);
        },
        child: const Text('Abrir BottomSheet'),
      ),
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
          child: const ContentBottomSheet(),
        );
      },
    );
  }
}






