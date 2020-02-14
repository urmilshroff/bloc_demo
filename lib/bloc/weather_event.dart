import 'package:equatable/equatable.dart';

abstract class WeatherEvent extends Equatable {
  const WeatherEvent();
}

class GetBasicWeather extends WeatherEvent {
  final String cityName;

  const GetBasicWeather(this.cityName);

  @override
  List<Object> get props => [cityName];
}

class GetDetailedWeather extends WeatherEvent {
  final String cityName;

  const GetDetailedWeather(this.cityName);

  @override
  List<Object> get props => [cityName];
}
