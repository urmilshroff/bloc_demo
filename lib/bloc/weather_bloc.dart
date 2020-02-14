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
    // TODO: implement mapEventToState
  }
}
