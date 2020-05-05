import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterbloctodo/bloc/TodoBloc.dart';

class Todo extends StatefulWidget {
  @override
  _TodoState createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TodoBloc, List>(
      builder: (_, todo) {
       return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(child: Column(children: <Widget>[Text('$todo'), Text('cool')],),),
        );
      },

    );
  }
}
