import 'package:flutter/material.dart';

class ButtonActionPrimary extends StatelessWidget {
  const ButtonActionPrimary({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 48,
      child: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        backgroundColor: Colors.indigo,
        elevation: 2,
        onPressed: () {},
        child: const Text(
          'Registrarse',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w700,
            letterSpacing: 0.7,
          ),
        ),
      ),
    );
  }
}