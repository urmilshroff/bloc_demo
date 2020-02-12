import 'package:bloc/bloc.dart';
import 'package:bloc_demo/bloc/weather_event.dart';
import 'package:bloc_demo/bloc/weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  @override
  // TODO: implement initialState
  WeatherState get initialState => InitialWeatherState();

  @override
  Stream<WeatherState> mapEventToState(WeatherEvent event) async* {
    // TODO: implement mapEventToState
  }
}
