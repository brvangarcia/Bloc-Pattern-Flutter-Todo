import 'package:flutter/material.dart';
import 'package:flutterbloctodo/components/TodoList.dart';
import '../bloc/TodoBloc.dart';

import 'package:flutter_bloc/flutter_bloc.dart';


class HomePage extends StatelessWidget {

  String todo;


  void _settingModalBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              child: new Wrap(
                children: <Widget>[TextFormField(onChanged: (value) {
                todo = value;
                },), FlatButton(onPressed: () {BlocProvider.of<TodoBloc>(context).add(TodoEvent.addTodo);}, child: Text('Submit'))],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    final TodoBloc todoBloc = BlocProvider.of<TodoBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter todo'),
      ),
      body: TodoList(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => _settingModalBottomSheet(context),
      ),
    );
  }
}
