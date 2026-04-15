import 'package:flutter/material.dart';

abstract class ThemeState {}

class ThemeInitial extends ThemeState {}

class ThemeLoad extends ThemeState {
  final ThemeMode themeMode;
  ThemeLoad(this.themeMode);
}
