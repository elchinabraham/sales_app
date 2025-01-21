import 'package:flutter/material.dart';

List<String> list = <String>[
  '010',
  '050',
  '051',
  '055',
  '099',
  '070',
  '077',
];

class PhoneNumbersDropdown extends StatefulWidget {
  const PhoneNumbersDropdown({super.key});

  @override
  State<PhoneNumbersDropdown> createState() => _PhoneNumbersDropdownState();
}

class _PhoneNumbersDropdownState extends State<PhoneNumbersDropdown> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton<String>(
        value: dropdownValue,
        style: const TextStyle(color: Colors.black, fontSize: 16),
        iconSize: 26,
        dropdownColor: Colors.white,
        onChanged: (String? value) {
          setState(() {
            dropdownValue = value!;
          });
        },
        items: list.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Row(
              children: [
                const SizedBox(width: 12),
                Text(value),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
