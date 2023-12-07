import 'package:cloud_firestore/cloud_firestore.dart';
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

  void dispose() {
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
            StreamBuilder<QuerySnapshot>(
                stream: FirebaseFirestore.instance.collection('todo')
                    .snapshots(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return CircularProgressIndicator();
                  }
                  final documents = snapshot.data!.docs;
                  return Expanded(
                    child: ListView(
                      children: documents.map((doc) => _buildItemWidget(doc))
                          .toList(),
                    ),
                  );
                }
            )
          ],
        ),
      ),
    );
  }

  Widget _buildItemWidget(DocumentSnapshot doc) {
    final todo = Todo(doc['title'], isDone: doc['isDone']);

    return ListTile(
      onTap: () => _toggleToDo(doc),
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
        onPressed: () => _deleteTodo(todo),
      ),
    );
  }
  void _addTodo(Todo todo){
    FirebaseFirestore.instance.collection('todo')
        .add({'title' : todo.title, 'isDone' : todo.isDone});
    _toDoControler.text = ('');

    }

  void _deleteTodo(Todo todo){
    FirebaseFirestore.instance.collection('todo').doc(doc.id).delete();
  }
  void _toggleToDo(Todo todo){
    FirebaseFirestore.instance.collection('todo').doc(doc.id).update(
      {'isDone' : !doc['isDone']}
    );
  }
}


