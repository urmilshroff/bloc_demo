import 'package:bloc_demo/blocs/note_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: close_sinks
    final _counter = BlocProvider.of<NoteBloc>(context);
    // create the variable to use everywhere (imp!)

    return Scaffold(
      appBar: AppBar(
        title: Text('BLoC Demo'),
      ),
      body: Center(
        child: BlocBuilder<NoteBloc, int>(
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
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.edit),
        onPressed: () => _counter.add(NoteEvents.create),
      ),
    );
  }
}
