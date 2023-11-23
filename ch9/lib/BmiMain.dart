import 'package:flutter/material.dart';

class Bmimain extends StatefulWidget {
  const Bmimain({super.key});

  @override
  State<Bmimain> createState() => _BmimainState();
}

class _BmimainState extends State<Bmimain> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('비만도 계산기'),
        backgroundColor: Colors.indigo,
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child:  Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: '키'
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 20,),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: '몸무게'
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 20,),
              Container(
                margin: const EdgeInsets.only(top: 16.0),
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                    onPressed: (){
                      if(_formKey.currentState!.validate()){

                      }
                    },
                    child: Text('결과')
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
