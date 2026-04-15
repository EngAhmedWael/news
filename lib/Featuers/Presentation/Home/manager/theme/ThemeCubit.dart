import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/Featuers/Presentation/Home/manager/theme/themestate.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Themecubit extends Cubit<ThemeState> {
  Themecubit() : super(ThemeInitial());

  static const String key = 'theme_key';

  // تحميل الثيم من التخزين
  Future<void> themeloaded() async {
    final prefs = await SharedPreferences.getInstance();
    final isDark = prefs.getBool(key) ?? false;

    if (isDark) {
      emit(ThemeLoad(ThemeMode.dark));
    } else {
      emit(ThemeLoad(ThemeMode.light));
    }
  }

  // تغيير الثيم (Toggle)
  Future<void> toggleTheme() async {
    final prefs = await SharedPreferences.getInstance();

    if (state is ThemeLoad) {
      final currentMode = (state as ThemeLoad).themeMode;

      if (currentMode == ThemeMode.dark) {
        await prefs.setBool(key, false);
        emit(ThemeLoad(ThemeMode.light));
      } else {
        await prefs.setBool(key, true);
        emit(ThemeLoad(ThemeMode.dark));
      }
    }
  }
}
