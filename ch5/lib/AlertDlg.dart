import 'package:flutter/material.dart';

class AlertDlg extends StatefulWidget {
  const AlertDlg({super.key});

  @override
  State<AlertDlg> createState() => _AlertDlgState();
}

class _AlertDlgState extends State<AlertDlg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Dialog"),
        backgroundColor: Colors.cyan,
      ),
      body: ElevatedButton(
        child: Text('Show Dialog'),
        onPressed: (){
          showDialog(
              context: context, 
              builder: (BuildContext context){
                return AlertDialog(
                  title: Text('제목'),
                  content: SingleChildScrollView(
                    child: ListBody(
                      children: [
                        Text('Altert Dialog입니다'),
                        Text('OK를 눌러 닫습니다.'),
                      ],
                    ),
                  ),
                  actions: <Widget>[
                    TextButton(
                        onPressed: (){
                          Navigator.of(context).pop(); //아 그 앱 안닫고 이동하는거!
                        },
                        child: Text('OK'),
                    ),
                    TextButton(
                        onPressed: (){
                          Navigator.of(context).pop();
                        },
                        child: Text('Cancel'),
                    ),
                  ],
                );
              },
          );
        },
      ),
    );
  }
}
