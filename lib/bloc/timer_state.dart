import 'package:equatable/equatable.dart';

abstract class TimerState extends Equatable {
  final int duration;

  const TimerState(this.duration);

  @override
  List<Object> get props => [duration];
}

class ReadyState extends TimerState {
  const ReadyState(int duration) : super(duration);
}

class RunningState extends TimerState {
  const RunningState(int duration) : super(duration);
}

class PausedState extends TimerState {
  const PausedState(int duration) : super(duration);
}

class FinishedState extends TimerState {
  const FinishedState() : super(0);
}
