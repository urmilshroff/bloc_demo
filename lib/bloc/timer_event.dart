import 'package:equatable/equatable.dart';

abstract class TimerEvent extends Equatable {
  const TimerEvent();

  @override
  List<Object> get props => [];
}

class StartEvent extends TimerEvent {
  final int duration;

  const StartEvent({@required this.duration});
}

class PauseEvent extends TimerEvent {}

class ResumeEvent extends TimerEvent {}

class ResetEvent extends TimerEvent {}

class TickEvent extends TimerEvent {
  final int duration;

  const TickEvent({@required this.duration});

  @override
  List<Object> get props => [duration];
}
