import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class ColorEvent {}

class OrangeColorEvent extends ColorEvent {}

class GreyColorEvent extends ColorEvent {}

class ColorBloc extends Bloc<ColorEvent, Color> {
  ColorBloc() : super(Colors.deepOrangeAccent) {
    // регистрируем обработчик с помощью метода on
    on<OrangeColorEvent>((event, emit) => emit(Colors
        .deepOrangeAccent)); // callback, который принимает событие и emit (переводит событие в нужное состояние)
    on<GreyColorEvent>((event, emit) => emit(Colors.blueGrey));
  }
}
