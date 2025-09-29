import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BrightnessToggle extends Notifier<Brightness> {
  @override
  Brightness build() {
    return Brightness.light;
  }

  void toggle() {
    state = state == Brightness.light ? Brightness.dark : Brightness.light;
  }
}

final brightness = NotifierProvider<BrightnessToggle, Brightness>(
  BrightnessToggle.new,
);
