import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class RouterObserver extends AutoRouterObserver {
  RouterObserver();

  @override
  void didPush(Route route, Route? previousRoute) {
    debugPrint(
      'New route pushed: ${route.settings.name} ${route.settings.arguments}',
    );
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    debugPrint(
      'Route poped: ${route.settings.name} ${route.settings.arguments}',
    );
  }

  @override
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) {
    debugPrint('Tab route visited: ${route.name} ${route.path}');
  }

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {
    debugPrint('Tab route re-visited: ${route.name} ${route.path}');
  }
}
