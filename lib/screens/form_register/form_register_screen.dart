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
      body: _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const Row(
            children: [
              TextFieldFormPractice(hint: 'Nombre'),
              SizedBox(width: 16),
              TextFieldFormPractice(hint: 'Apellido'),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              DropdownFormPractice(hint: 'Cuidad', listDropdown: cities),
              const SizedBox(width: 16),
              DropdownFormPractice(hint: 'Genero', listDropdown: genders),
            ],
          ),
          const SizedBox(height: 16),
          const SizedBox( height: 48, child: TextFieldFormPractice(hint: 'Dirección')),
          const SizedBox(height: 16),
          const Row(children: [TextFieldFormPractice(hint: 'Descripción',height: 150,)]),
        ],
      ),
    );
  }
}

List<String> cities = [
  'Caracas',
  'Maracaibo',
  'Valencia',
  'Barquisimeto',
  'Maracay',
  'Ciudad Guayana',
  'Barcelona',
  'Maturín',
  'San Cristóbal',
  'Cumaná',
];

List<String> genders = [
  'Masculino',
  'Femenino',
  'No binario',
  'Género fluido',
  'Agénero',
  'Bigénero',
  'Pangénero',
  'Transexual',
  'Cisgénero',
  'Intersexual',
  'Andrógino',
  'Demiboy',
  'Demigirl',
  'Queer',
];

class DropdownFormPractice extends StatefulWidget {
  final String hint;
  final List<String> listDropdown;
  const DropdownFormPractice({
    super.key,
    required this.hint,
    required this.listDropdown,
  });

  @override
  State<DropdownFormPractice> createState() => _DropdownFormPracticeState();
}

class _DropdownFormPracticeState extends State<DropdownFormPractice> {
  String? dropdownValue;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.only(left: 8),
        decoration: BoxDecoration(
          border: Border.all(width: 1.5, color: Colors.grey),
          borderRadius: BorderRadius.circular(8),
        ),
        child: DropdownButton<String>(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          menuMaxHeight: 300,
          underline: Container(
            height: 0,
          ),
          hint: Text(widget.hint),
          icon: const Icon(Icons.arrow_drop_down),
          value: dropdownValue,
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue!;
            });
          },
          items:
              widget.listDropdown.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class TextFieldFormPractice extends StatelessWidget {
  final double? height;
  final String hint;
  const TextFieldFormPractice({
    super.key,
    required this.hint, this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: height,
        child: TextField(
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.indigo, width: 2),
              borderRadius: BorderRadius.circular(8),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.grey, width: 1.5),
              borderRadius: BorderRadius.circular(8),
            ),
            hintText: hint,
            contentPadding: const EdgeInsets.only(left: 12),
          ),
          textAlignVertical: TextAlignVertical.top,
        ),
      ),
    );
  }
}
