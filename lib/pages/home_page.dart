import 'package:bloc_demo/blocs/counter_bloc.dart';
import 'package:bloc_demo/pages/edit_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _counter = BlocProvider.of<CounterBloc>(context);
    // create the variable to use everywhere (imp!)

    return Scaffold(
      appBar: AppBar(
        title: Text('BLoC Demo'),
      ),
      body: Center(
        child: BlocBuilder<CounterBloc, int>(
          // the <type> is important
          builder: (BuildContext context, state) {
            // like a StreamBuilder - it listens to state changes!
            return Text(
              state.toString(), // state is an integer (the count)
              style: TextStyle(fontSize: 36.0),
            );
          },
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () => _counter.add(CounterEvents.increment),
            // adds enum to _counter stream
          ),
          FloatingActionButton(
            child: Icon(Icons.remove),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_forward),
        onPressed: () => Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) {
          return MyEditPage();
        })),
      ),
    );
  }
}
