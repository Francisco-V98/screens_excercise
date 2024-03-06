import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dropdown Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DropdownScreen(),
    );
  }
}

class DropdownScreen extends StatefulWidget {
  @override
  _DropdownScreenState createState() => _DropdownScreenState();
}

class _DropdownScreenState extends State<DropdownScreen> {
  String? selectedValue;
  Map<String, String> dropdownValues = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dropdown Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            DropdownButton<String>(
              value: selectedValue,
              onChanged: (String? value) {
                setState(() {
                  selectedValue = value;
                });
              },
              items: <String>['Value 1', 'Value 2', 'Value 3'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (selectedValue != null) {
                  dropdownValues[selectedValue!] = 'Some value'; // Assigning a sample value for demonstration
                  setState(() {
                    selectedValue = null; // Reset dropdown value after adding to the map
                  });
                }
              },
              child: const Text('Agregar valor al mapa'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DisplayScreen(dropdownValues: dropdownValues),
                  ),
                );
              },
              child: const Text('Mostrar valores del mapa'),
            ),
          ],
        ),
      ),
    );
  }
}

class DisplayScreen extends StatelessWidget {
  final Map<String, String> dropdownValues;

  const DisplayScreen({Key? key, required this.dropdownValues}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Valores del Dropdown en el Mapa'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            for (var entry in dropdownValues.entries)
              Text('Valor seleccionado: ${entry.key}, Valor asignado: ${entry.value}'),
          ],
        ),
      ),
    );
  }
}
