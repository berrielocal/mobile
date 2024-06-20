import 'package:flutter/material.dart';

class SortDropdown extends StatefulWidget {
  final String initialValue;
  final ValueChanged<String> onChanged;

  const SortDropdown({
    Key? key,
    required this.initialValue,
    required this.onChanged,
  }) : super(key: key);

  @override
  _SortDropdownState createState() => _SortDropdownState();
}

class _SortDropdownState extends State<SortDropdown> {
  late String dropdownValue;

  @override
  void initState() {
    super.initState();
    dropdownValue = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.keyboard_arrow_down_rounded),
      elevation: 16,
      style: const TextStyle(color: Colors.black),
      onChanged: (String? newValue) {
        if (newValue != null) {
          setState(() {
            dropdownValue = newValue;
          });
          widget.onChanged(newValue);
        }
      },
      items: <String>['А-Я', 'ПО ПОПУЛЯРНОСТИ', 'Я-А', 'ПО НОВИЗНЕ']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
