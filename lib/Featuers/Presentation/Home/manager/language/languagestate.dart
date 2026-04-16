import 'package:flutter/material.dart';

abstract class LanguageState {}

class LanguageInitial extends LanguageState {}

class LanguageLoaded extends LanguageState {
  final Locale language;

  LanguageLoaded({required this.language});
}
