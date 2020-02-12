import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

// this is not the bloc

class Weather extends Equatable {
  final String cityName;
  final double celcius;
  final double farenheit;

  Weather({
    @required this.cityName,
    @required this.celcius,
    this.farenheit,
  });

  @override
  List<Object> get props => [
        cityName,
        celcius,
        farenheit,
      ];
}
