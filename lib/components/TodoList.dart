import 'package:flutter/material.dart';
import 'package:flutterbloctodo/bloc/TodoBloc.dart';
import 'Todo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodoList extends StatefulWidget {
  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TodoBloc, List>(builder: (context, state) {
      return Column(
        children: <Widget>[

          Expanded(
            child: ListView.builder(
                itemCount: state.length,
                itemBuilder: (BuildContext ctxt, int index) {
                  return new Column(
                    children: <Widget>[Text(state[index])],
                  );
                }),
          ),
        ],
      );
    });
  }
}

