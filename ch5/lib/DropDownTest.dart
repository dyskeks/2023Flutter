import 'package:flutter/material.dart';

class DropDownTest extends StatefulWidget {
  const DropDownTest({super.key});

  @override
  State<DropDownTest> createState() => _DropDownTestState();
}

class _DropDownTestState extends State<DropDownTest> {
  final valueList = ['First Item', 'Second Item', 'Third Item'];
  String selectedItem = 'First Item';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DropDown Test'),
        backgroundColor: Colors.purple,
      ),
      body: DropdownButton(
        value: selectedItem,
        items: valueList.map(
            (value) {
              return DropdownMenuItem(
                value: value,
                child: Text(value),
              );
            },
        ).toList(),
        onChanged: (String? value) {
          setState(() {
            selectedItem = value!;
          });
        },
      ),
    );
  }
}
