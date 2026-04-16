import 'package:flutter/painting.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/Featuers/Presentation/Home/manager/language/languagestate.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguageCubit extends Cubit<LanguageState> {
  LanguageCubit() : super(LanguageInitial());
  static const key = "lang";
  Future<void> getlanguage() async {
    final prefs = await SharedPreferences.getInstance();
    final data = prefs.getString(key) ?? 'en';
    if (data == 'en') {
      emit(LanguageLoaded(language: Locale('en')));
    } else {
      emit(LanguageLoaded(language: Locale('ar')));
    }
  }

  Future<void> changeLanguage() async {
    final prefs = await SharedPreferences.getInstance();

    if (state is LanguageLoaded) {
      final currentMode = (state as LanguageLoaded).language;

      if (currentMode == Locale('en')) {
        await prefs.setString(key, 'ar');
        emit(LanguageLoaded(language: Locale('ar')));
      } else {
        await prefs.setString(key, 'en');
        emit(LanguageLoaded(language: Locale('en')));
      }
    }
  }
}
