import 'package:flutter/material.dart';
import 'package:news/Featuers/Presentation/Home/widget/LanguageSwitchWidget.dart';
import 'package:news/Featuers/Presentation/Home/widget/RowAppbar.dart';
import 'package:news/Featuers/Presentation/Home/widget/ThemeSwitchWidget.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SettingsBody());
  }
}

class SettingsBody extends StatelessWidget {
  const SettingsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Column(
        children: [
          const SizedBox(height: 30),

          const RowAppbar(),

          const SizedBox(height: 20),

          const ThemeSwitchWidget(),

          const SizedBox(height: 10),

          const LanguageSwitchWidget(),
        ],
      ),
    );
  }
}
