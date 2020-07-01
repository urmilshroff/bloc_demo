import 'package:bloc_demo/blocs/counter_bloc.dart';
import 'package:bloc_demo/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BLoC Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: BlocProvider(
        // allows MyHomePage to access CounterBloc
        create: (BuildContext context) => CounterBloc(), // this is the bloc!
        child: MyHomePage(),
      ),
    );
  }
}
