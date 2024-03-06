import 'package:flutter/material.dart';
import 'package:screens_excercise/widgets/general/widgets.dart';

class FormRegisterViewData extends StatelessWidget {
  final Map<String, String?> dataText;

  const FormRegisterViewData({super.key, required this.dataText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarNew(
        title: 'Formulario de Registro',
        leadingIcon: Icons.arrow_back_ios,
        onpressed: () {
          Navigator.pop(context);
        },
      ),
      body: _Body(dataText),
    );
  }
}

class _Body extends StatelessWidget {
  final Map<String, String?> dataText;
  const _Body(this.dataText);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: GroupTextDataRegister(
                    title: 'Nombre',
                    dataText: '${dataText['Nombre']}',
                  ),
                ),
                Expanded(
                  child: GroupTextDataRegister(
                    title: 'Apellido',
                    dataText: '${dataText['Apellido']}',
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
            Row(
              children: [
                Expanded(
                  child: GroupTextDataRegister(
                    title: 'Ciudad',
                    dataText: '${dataText['Ciudad']}',
                  ),
                ),
                Expanded(
                  child: GroupTextDataRegister(
                    title: 'Genero',
                    dataText: '${dataText['Genero']}',
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GroupTextDataRegister(
                  title: 'Direccion',
                  dataText: '${dataText['Direccion']}',
                ),
                const SizedBox(height: 32),
                GroupTextDataRegister(
                  title: 'Descripcion',
                  dataText: '${dataText['Descripcion']}',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class GroupTextDataRegister extends StatelessWidget {
  final String title;
  final String dataText;
  const GroupTextDataRegister({
    super.key,
    required this.title,
    required this.dataText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black.withOpacity(0.7),
          ),
        ),
        Text(
          dataText,
          style: const TextStyle(
            fontSize: 20,
            letterSpacing: 0.5,
            color: Colors.indigo,
          ),
        ),
      ],
    );
  }
}
