import 'package:auto_route/auto_route.dart';
import 'package:weather_ddd_app/presentation/dashboard/homepage.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route,Tab',
  routes: <AutoRoute>[
    AutoRoute(path: 'splash', page: Dashboard, initial: true),
  ],
)
class $AppRouter {}
