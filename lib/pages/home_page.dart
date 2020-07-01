import 'package:bloc_demo/blocs/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: close_sinks
    final _counter = BlocProvider.of<CounterBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('BLoC Demo'),
      ),
      body: Center(
        child: BlocBuilder<CounterBloc, int>(
          builder: (BuildContext context, state) {
            return Text(
              state.toString(),
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
          ),
          FloatingActionButton(
            child: Icon(Icons.remove),
            onPressed: () => _counter.add(CounterEvents.decrement),
          ),
        ],
      ),
    );
  }
}
