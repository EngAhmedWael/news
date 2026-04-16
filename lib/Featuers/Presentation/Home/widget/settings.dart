import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/Featuers/Presentation/Home/manager/language/LanguageCubit.dart';
import 'package:news/Featuers/Presentation/Home/manager/language/languagestate.dart';
import 'package:news/Featuers/Presentation/Home/manager/theme/ThemeCubit.dart';
import 'package:news/Featuers/Presentation/Home/manager/theme/themestate.dart';
import 'package:news/Featuers/Presentation/Home/widget/RowAppbar.dart';
import 'package:news/core/utils/style.dart';

import 'package:news/l10n/app_localizations.dart';

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

class ThemeSwitchWidget extends StatelessWidget {
  const ThemeSwitchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Themecubit, ThemeState>(
      builder: (context, state) {
        final isDark = state is ThemeLoad && state.themeMode == ThemeMode.dark;

        return SwitchListTile(
          title: Text(
            AppLocalizations.of(context)!.darkMode,
            style: AppStyle.titleStyle,
          ),
          value: isDark,
          onChanged: (value) {
            context.read<Themecubit>().toggleTheme();
          },
        );
      },
    );
  }
}

class LanguageSwitchWidget extends StatelessWidget {
  const LanguageSwitchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LanguageCubit, LanguageState>(
      builder: (context, state) {
        final isArabic =
            state is LanguageLoaded && state.language.languageCode == "ar";

        return SwitchListTile(
          title: Text(
            AppLocalizations.of(context)!.language,
            style: AppStyle.titleStyle,
          ),
          value: isArabic,
          onChanged: (value) {
            context.read<LanguageCubit>().changeLanguage();
          },
        );
      },
    );
  }
}
