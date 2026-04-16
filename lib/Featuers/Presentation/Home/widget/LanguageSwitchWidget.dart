import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/Core/utils/style.dart';
import 'package:news/Featuers/Presentation/Home/manager/language/LanguageCubit.dart';
import 'package:news/Featuers/Presentation/Home/manager/language/languagestate.dart';
import 'package:news/l10n/app_localizations.dart';

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
