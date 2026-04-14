import 'package:go_router/go_router.dart';
import 'package:news/Featuers/Home/home.dart';

class AppRouter {
  static String home = '/';
  static GoRouter router = GoRouter(
    routes: [GoRoute(path: '/', builder: (context, state) => Home())],
  );
}
