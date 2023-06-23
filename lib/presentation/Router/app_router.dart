import 'package:flutter/material.dart';
import 'package:flutter_bloc_concept/presentation/screens/home_screen.dart';

import '../screens/second_screen.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (_) =>
                HomeScreen(title: "Home Screen", color: Colors.blueAccent));
      case '/second':
        return MaterialPageRoute(
            builder: (_) =>
                SecondScreen(title: "Second Screen", color: Colors.redAccent));
      case '/third':
        return MaterialPageRoute(
            builder: (_) =>
                SecondScreen(title: "Third Screen", color: Colors.greenAccent));
      default:
        return null;
    }
  }
}
