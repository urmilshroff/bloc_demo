import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

// this is not the bloc

class Weather extends Equatable {
  final String cityName;
  final double celsius;
  final double fahrenheit;

  Weather({
    @required this.cityName,
    @required this.celsius,
    this.fahrenheit,
  });

  @override
  List<Object> get props => [
        cityName,
        celsius,
        fahrenheit,
      ];
}
