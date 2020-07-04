import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class Note extends Equatable {
   final String id = Uuid().v4();
  String title;
  String body;

  Note({
    String id,
     this.title,
    this.body,
  }) : this.title = ;

  @override
  // TODO: implement props
  List<Object> get props => throw UnimplementedError();
}
