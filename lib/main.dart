import 'package:flutter/material.dart';

void main() {
  runApp(const DropDownSearchApp());
}

class DropDownSearchApp extends StatefulWidget {
  const DropDownSearchApp({super.key});

  @override
  _DropDownSearchAppState createState() => _DropDownSearchAppState();
}

class _DropDownSearchAppState extends State<DropDownSearchApp> {
  String? selectedFruit;
  List<String> fruitList = [
    'Apple',
    'Banana',
    'Cherry',
    'Durian',
    'Elderberry',
    'Fig',
    'Grapes',
    'Honeydew Melon',
    'Kiwi',
    'Lemon',
    'Mango',
    'Nectarine',
    'Orange',
    'Papaya',
    'Quince',
    'Raspberry',
    'Strawberry',
    'Watermelon'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Drop-down Search Demo'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DropdownButton<String>(
                value: selectedFruit,
                hint: const Text('Select a fruit'),
                onChanged: (newValue) {
                  setState(() {
                    selectedFruit = newValue;
                  });
                },
                items: fruitList.map((fruit) {
                  return DropdownMenuItem<String>(
                    value: fruit,
                    child: Text(fruit),
                  );
                }).toList(),
              ),
              const SizedBox(height: 16),
              Text(
                'Selected fruit: ${selectedFruit ?? "None"}',
                style: const TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

