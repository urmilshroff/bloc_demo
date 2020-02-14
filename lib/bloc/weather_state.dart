import 'package:equatable/equatable.dart';

abstract class WeatherState extends Equatable {
  const WeatherState();
}

class WeatherInitialState extends WeatherState {
  const WeatherInitialState();
  @override
  List<Object> get props => [];
}

class WeatherLoadingState extends WeatherState {
  const WeatherLoadingState();
  @override
  List<Object> get props => [];
}

class WeatherBasicState extends WeatherState {
  const WeatherBasicState();
  @override
  List<Object> get props => [];
}

class WeatherDetailedState extends WeatherState {
  const WeatherDetailedState();
  @override
  List<Object> get props => [];
}
