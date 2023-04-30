import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// @freezed
// class RandomizerState with $RandomizerState {
//   const RandomizerState._();
//   const factory RandomizerState({
//    @Default(0) int min,
//    @Default(0) int max,
//     int generatedNumber,
//   }) = _RandomizerState;
// }

// class RandomizerStateNotifier extends StateNotifier {}

class RandomizerChangeNotifier extends ChangeNotifier {
  final _randomGenerator = Random();

  int? _generatedNumber;
  int? get generatedNumber => _generatedNumber;
  int min = 0, max = 0;

  void generatedRandomNumber() {
    _generatedNumber = min + _randomGenerator.nextInt(max + 1 - min);
    notifyListeners();
  }
}
