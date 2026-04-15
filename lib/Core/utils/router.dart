import 'package:go_router/go_router.dart';
import 'package:news/Featuers/Home/home.dart';
import 'package:news/Featuers/Home/widget/CategoryNews.dart';
import 'package:news/Featuers/Home/widget/News.dart';

class AppRouter {
  static String home = '/';
  static String categoryNews = '/CategoryNews';
  static String news = '/News';

  static GoRouter router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => Home()),
      GoRoute(path: '/News', name: news, builder: (context, state) => News()),

      GoRoute(
        path: '/CategoryNews',
        name: categoryNews,
        builder: (context, state) => Categorynews(),
      ),
    ],
  );
}
