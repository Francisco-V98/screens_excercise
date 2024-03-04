import 'package:flutter/material.dart';
import 'package:screens_excercise/widgets/form_register_widgets/form_register_widgets.dart';
import 'package:screens_excercise/widgets/general/widgets.dart';
import 'package:screens_excercise/screens/form_register/data_resource/lists_data.dart';

class FormRegisterScreen extends StatelessWidget {
  const FormRegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarNew(
        title: 'Formulario de Registro',
        leadingIcon: Icons.arrow_back_ios,
      ),
      body: _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: SizedBox(
          child: Column(
            children: [
              fullNameSection(),
              const SizedBox(height: 16),
              citiesAndGendersSection(),
              const SizedBox(height: 16),
              adressAndDescriptionSection(),
              const SizedBox(height: 8),
              checkbox(),
              const SizedBox(height: 150),
              const ButtonActionPrimary()
            ],
          ),
        ),
      ),
    );
  }

  Row checkbox() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CheckboxDefault(),
        SizedBox(height: 4),
        Text(
          'Acepto los términos y condiciones',
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w500, color: Colors.indigo),
        )
      ],
    );
  }

  Column adressAndDescriptionSection() {
    return const Column(
      children: [
        TextfieldImput(hint: 'Direccion'),
        SizedBox(height: 16),
        TextfieldImput(hint: 'Descripcion', height: 100),
      ],
    );
  }

  Row citiesAndGendersSection() {
    return Row(
      children: [
        Expanded(
          child: DropdownDefault(
            hint: 'Ciudad',
            listDropdown: cities,
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: DropdownDefault(
            hint: 'Genero',
            listDropdown: genders,
          ),
        ),
      ],
    );
  }

  Row fullNameSection() {
    return const Row(
      children: [
        Expanded(child: TextfieldImput(hint: 'Nombre')),
        SizedBox(width: 16),
        Expanded(child: TextfieldImput(hint: 'Apellido')),
      ],
    );
  }
}
