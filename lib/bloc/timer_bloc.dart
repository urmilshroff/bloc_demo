import 'package:bloc/bloc.dart';
import 'package:bloc_demo/bloc/timer_event.dart';
import 'package:bloc_demo/bloc/timer_state.dart';

class TimerBloc extends Bloc<TimerEvent, TimerState> {
  @override
  TimerState get initialState => null;
  @override
  Stream<TimerState> mapEventToState(TimerEvent event) async* {}
}
