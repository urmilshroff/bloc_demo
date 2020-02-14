import 'package:bloc/bloc.dart';
import 'package:bloc_demo/bloc/weather_event.dart';
import 'package:bloc_demo/bloc/weather_state.dart';
import 'package:bloc_demo/model/weather_repository.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final WeatherRepository weatherRepository;

  WeatherBloc(this.weatherRepository);

  @override
  WeatherState get initialState => WeatherInitialState();

  @override
  Stream<WeatherState> mapEventToState(WeatherEvent event) async* {
    if (event is GetBasicWeather) {
      try {
        final weather = await weatherRepository.fetchWeather(event.cityName);
        yield WeatherBasicState(weather);
      } on NetworkError {
        yield WeatherError('Error');
      }
    } else if (event is GetDetailedWeather) {
      try {
        final weather =
            await weatherRepository.fetchDetailedWeather(event.cityName);
        yield WeatherDetailedState(weather);
      } on NetworkError {
        yield WeatherError('Error');
      }
    }
  }
}
