import 'package:flutter/material.dart';

class RadioListTest extends StatefulWidget {
  const RadioListTest({super.key});

  @override
  State<RadioListTest> createState() => _RadioListTestState();
}
enum Gender {MAN, WOMAN}

class _RadioListTestState extends State<RadioListTest> {
  Gender? gender = Gender.MAN; //변수를 널타입?
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RadioList Test'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          ListTile(
            title: Text('남자'),
            leading: Radio(
              value: Gender.MAN,
              groupValue: gender,
              onChanged: (value){
                setState(() {
                  gender = value;
                });
              },
            ),
          ),
          ListTile(
            title: Text('여자'),
            leading: Radio(
              value: Gender.WOMAN,
              groupValue: gender,
              onChanged: (value){
                setState(() {
                  gender = value;
                });
              },
            ),
          ),
          SizedBox(height: 100,),
          RadioListTile(
              title: Text('MAN'),
              value: Gender.MAN,
              groupValue: gender,
            onChanged: (value){
              setState(() {
                gender = value;
              });
            },
          ),
          RadioListTile(
            title: Text('WOMAN'),
            value: Gender.WOMAN,
            groupValue: gender,
            onChanged: (value){
              setState(() {
                gender = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
