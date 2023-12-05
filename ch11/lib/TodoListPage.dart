import 'package:flutter/material.dart';

import 'Todo.dart';

class TodoListPage extends StatefulWidget {
  const TodoListPage({super.key});

  @override
  State<TodoListPage> createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  final _items = <Todo>[];
  var _toDoControler = TextEditingController();

  void dispose(){
    _toDoControler.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('남은 할 일'),
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: TextField(
                      controller: _toDoControler,
                    ),
                ),
                ElevatedButton(
                    onPressed: () => _addTodo(Todo(_toDoControler.text)),
                    child: Text('추가'),
                )
              ],
            ),
            Expanded(
                child: ListView(
                  children: _items.map((todo) => _buildItemWidget(todo)).toList(),
                ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildItemWidget(Todo todo){
    return ListTile(
      onTap: (){},
      title: Text(
        todo.title,
        style: todo.isDone
            ? TextStyle(
          decoration: TextDecoration.lineThrough,
          fontStyle: FontStyle.italic,
        )
            : null,
      ),
      trailing: IconButton(
        icon: Icon(Icons.delete_forever),
        onPressed: (){},
      ),
    );
  }
  
  void _addTodo(Todo todo){
    setState(() {
      _items.add(todo);
      _toDoControler.text = '';
    });
  }
}
