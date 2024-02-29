import 'package:flutter/material.dart';
import 'package:screens_excercise/widgets/general/widgets.dart';

class FormRegisterScreen extends StatelessWidget {
  const FormRegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarNew(
        title: 'Formulario de Registro',
        leadingIcon: Icons.arrow_back_ios,
      ),
    );
  }
}
