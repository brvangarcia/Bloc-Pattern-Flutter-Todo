import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/Todo.dart';

enum TodoEvent { getTodos, addTodo, deleteTodo }

class TodoBloc extends Bloc<TodoEvent, List> {
  @override
  get initialState => [];

  @override
  Stream<List> mapEventToState(TodoEvent event) async* {
    switch (event) {
      case TodoEvent.getTodos:

        yield state;
        break;
      case TodoEvent.addTodo:

        state.add('Todo');

        yield state;

        break;
      case TodoEvent.deleteTodo:

        yield state;
        break;
    }
  }
}
