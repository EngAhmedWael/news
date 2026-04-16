import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/Core/utils/style.dart';
import 'package:news/Featuers/Presentation/Home/manager/theme/ThemeCubit.dart';
import 'package:news/Featuers/Presentation/Home/manager/theme/themestate.dart';
import 'package:news/l10n/app_localizations.dart';

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
