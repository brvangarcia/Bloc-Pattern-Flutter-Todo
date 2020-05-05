import 'package:flutter/material.dart';

import 'views/HomePage.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import './bloc/TodoBloc.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => TodoBloc(),
      child: MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
