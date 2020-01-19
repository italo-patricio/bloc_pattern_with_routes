import 'package:estudo_bloc_pattern/modules/auth/auth_module.dart';
import 'package:estudo_bloc_pattern/modules/counter/counter_module.dart';
import 'package:flutter/material.dart';

import 'pages/app_main.dart';

class AppRouter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      initialRoute: '/',
      onGenerateRoute: (RouteSettings settings) {
        WidgetBuilder builder;
        switch (settings.name) {
          case '/':
            builder = (BuildContext _) => AppMain();
            break;
          case 'counter':
            builder = (BuildContext context) => CounterModule();
            break;
          case 'auth':
            builder = (BuildContext context) => AuthModule();
            break;
          default:
            throw Exception('Invalid route: ${settings.name}');
        }
        return MaterialPageRoute(builder: builder, settings: settings);
      },
    );
  }
}

