import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/Core/utils/style.dart';
import 'package:news/Featuers/Presentation/Home/manager/theme/ThemeCubit.dart';
import 'package:news/Featuers/Presentation/Home/manager/theme/themestate.dart';
import 'package:news/Featuers/Presentation/Home/widget/RowAppbar.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Settingsbody());
  }
}

class Settingsbody extends StatelessWidget {
  const Settingsbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Column(
        children: [
          RowAppbar(),

          BlocBuilder<Themecubit, ThemeState>(
            builder: (context, state) {
              bool isDark = false;

              if (state is ThemeLoad) {
                isDark = state.themeMode == ThemeMode.dark;
              }

              return SwitchListTile(
                title: Text('Dark Mode', style: AppStyle.titleStyle),
                value: isDark,
                onChanged: (value) {
                  context.read<Themecubit>().toggleTheme();
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
