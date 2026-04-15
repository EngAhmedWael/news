import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:news/Core/utils/apiserver.dart';
import 'package:news/Core/utils/router.dart';
import 'package:news/Featuers/Data/Repo/Newrepoimpl.dart';
import 'package:news/Featuers/Presentation/Home/manager/NewsCubit.dart';
import 'package:news/Featuers/Presentation/Home/manager/theme/ThemeCubit.dart';
import 'package:news/Featuers/Presentation/Home/manager/theme/themestate.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  final themcubit = Themecubit();
  await themcubit.themeloaded();
  runApp(MyApp(themecubit: themcubit));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.themecubit});
  final Themecubit themecubit;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: themecubit),
        BlocProvider(
          create: (context) =>
              Newscubit(NewsRepoImpl(apiserver: Apiserver(dio: Dio()))),
        ),
      ],
      child: BlocBuilder<Themecubit, ThemeState>(
        builder: (context, state) {
          ThemeMode mode = ThemeMode.light;
          if (state is ThemeLoad) {
            mode = state.themeMode;
          }

          return MaterialApp.router(
            routerConfig: AppRouter.router,
            debugShowCheckedModeBanner: false,
            theme: ThemeData.light(),
            darkTheme: ThemeData.dark(),
            themeMode: mode,
          );
        },
      ),
    );
  }
}
