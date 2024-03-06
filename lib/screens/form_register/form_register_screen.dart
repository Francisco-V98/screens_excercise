import 'package:flutter/material.dart';
import 'package:screens_excercise/screens/screens.dart';
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

class _Body extends StatefulWidget {
  const _Body();

  @override
  State<_Body> createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  Map<String, String?> textValues = {};

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: SizedBox(
          child: Column(
            children: [
              _fullNameSection(),
              const SizedBox(height: 16),
              _citiesAndGendersSection(),
              const SizedBox(height: 16),
              _adressAndDescriptionSection(),
              const SizedBox(height: 8),
              _checkbox(),
              const SizedBox(height: 220),
              buttonActionPrimary(context),
            ],
          ),
        ),
      ),
    );
  }

  ButtonActionPrimary buttonActionPrimary(BuildContext context) {
    return ButtonActionPrimary(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return FormRegisterViewData(
            dataText: textValues,
          );
        }));
      },
    );
  }

  Row _checkbox() {
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

  Column _adressAndDescriptionSection() {
    return Column(
      children: [
        TextfieldImput(
          hint: 'Direccion',
          onChanged: (String value) {
            textValues['Direccion'] = value;
            setState(() {});
          },
        ),
        const SizedBox(height: 16),
        TextfieldImput(
          hint: 'Descripcion',
          height: 100,
          onChanged: (String value) {
            textValues['Descripcion'] = value;
            setState(() {});
          },
        ),
      ],
    );
  }

  Row _citiesAndGendersSection() {
    return Row(
      children: [
        Expanded(
          child: DropdownDefault(
            hint: 'Ciudad',
            listDropdown: cities,
            onChanged: (String? value) {
              textValues['Ciudad'] = value;
              setState(() {});
            },
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: DropdownDefault(
            hint: 'Genero',
            listDropdown: genders,
            onChanged: (String? value) {
              textValues['Genero'] = value;
              setState(() {});
            },
          ),
        ),
      ],
    );
  }

  Row _fullNameSection() {
    return Row(
      children: [
        Expanded(
          child: TextfieldImput(
            hint: 'Nombre',
            onChanged: (String value) {
              textValues['Nombre'] = value;
              setState(() {});
            },
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: TextfieldImput(
            hint: 'Apellido',
            onChanged: (String value) {
              textValues['Apellido'] = value;
              setState(() {});
            },
          ),
        ),
      ],
    );
  }
}
