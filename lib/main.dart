import 'package:bloc_demo/blocs/counter_bloc.dart';
import 'package:bloc_demo/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  runApp(MyApp(
    prefs: prefs,
  ));
}

class MyApp extends StatelessWidget {
  SharedPreferences prefs;
  MyApp({
    @required this.prefs,
  });
  @override
  Widget build(BuildContext context) {
    final count = prefs.getInt('count') ?? 0;

    return BlocProvider(
      create: (BuildContext context) => CounterBloc(count), // this is the bloc!
      // allows MaterialApp to access CounterBloc
      child: MaterialApp(
        title: 'BLoC Demo',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        home: MyHomePage(),
      ),
    );
  }
}
