import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter/services.dart';
import 'package:dio/dio.dart';
import 'package:news/Core/utils/apiserver.dart';
import 'package:news/Core/utils/router.dart';
import 'package:news/Featuers/Data/Repo/Newrepoimpl.dart';
import 'package:news/Featuers/Presentation/Home/manager/NewsCubit.dart';
import 'package:news/Featuers/Presentation/Home/manager/language/LanguageCubit.dart';
import 'package:news/Featuers/Presentation/Home/manager/language/languagestate.dart';
import 'package:news/Featuers/Presentation/Home/manager/theme/ThemeCubit.dart';
import 'package:news/Featuers/Presentation/Home/manager/theme/themestate.dart';
import 'package:news/l10n/app_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load(fileName: ".env");

  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);

  final themeCubit = Themecubit();
  themeCubit.themeloaded();

  final languageCubit = LanguageCubit();
  languageCubit.getlanguage();

  runApp(MyApp(themecubit: themeCubit, languageCubit: languageCubit));
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
    required this.themecubit,
    required this.languageCubit,
  });

  final Themecubit themecubit;
  final LanguageCubit languageCubit;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: themecubit),
        BlocProvider.value(value: languageCubit),
        BlocProvider(
          create: (context) =>
              Newscubit(NewsRepoImpl(apiserver: Apiserver(dio: Dio()))),
        ),
      ],

      child: BlocBuilder<Themecubit, ThemeState>(
        builder: (context, themeState) {
          final themeMode = themeState is ThemeLoad
              ? themeState.themeMode
              : ThemeMode.light;

          return BlocBuilder<LanguageCubit, LanguageState>(
            builder: (context, langState) {
              final locale = langState is LanguageLoaded
                  ? langState.language
                  : const Locale('en');

              return MaterialApp.router(
                debugShowCheckedModeBanner: false,

                routerConfig: AppRouter.router,

                // 🌙 Theme
                theme: ThemeData.light(),
                darkTheme: ThemeData.dark(),
                themeMode: themeMode,

                // 🌍 Language
                locale: locale,
                supportedLocales: const [Locale('en'), Locale('ar')],

                localizationsDelegates: const [
                  AppLocalizations.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
              );
            },
          );
        },
      ),
    );
  }
}
