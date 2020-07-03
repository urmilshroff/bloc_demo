import 'package:bloc_demo/blocs/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyEditPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: close_sinks
    final _counter = BlocProvider.of<CounterBloc>(context);
    // create the variable to use everywhere (imp!)

    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Page'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  child: Icon(Icons.add),
                  onPressed: () => _counter.add(CounterEvents.increment),
                  // adds enum to _counter stream
                ),
                SizedBox(
                  width: 20.0,
                ),
                FloatingActionButton(
                  child: Icon(Icons.remove),
                  heroTag: 'decrement',
                  onPressed: () => _counter.add(CounterEvents.decrement),
                  // adds enum to _counter stream
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
