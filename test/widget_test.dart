// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:news/Featuers/Presentation/Home/manager/language/LanguageCubit.dart';
import 'package:news/Featuers/Presentation/Home/manager/theme/ThemeCubit.dart';

import 'package:news/main.dart';

void main() {
  testWidgets('Theme toggle test', (WidgetTester tester) async {
    final themeCubit = Themecubit();
    await themeCubit.themeloaded();
    final languageCubit = LanguageCubit();
    await languageCubit.getlanguage();
    await tester.pumpWidget(
      MyApp(themecubit: themeCubit, languageCubit: languageCubit),
    );

    // تأكد إن التطبيق اشتغل
    expect(find.byType(MaterialApp), findsOneWidget);
  });
}
