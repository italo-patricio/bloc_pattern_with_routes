import 'package:flutter/material.dart';

import 'pages/counter_detail.dart';
import 'pages/counter_main.dart';

class CounterRouter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      initialRoute: 'counter/home',
      onGenerateRoute: (RouteSettings settings) {
        WidgetBuilder builder;
        switch (settings.name) {
          case 'counter/home':
            builder = (BuildContext _) => CounterMain();
            break;
          case 'counter/detail':
            builder = (BuildContext _) => CounterDetail(
              onClosePage: () {
                Navigator.of(context).pop();
              },
            );
            break;  
          default:
            throw Exception('Invalid route: ${settings.name}');
        }
        return MaterialPageRoute(builder: builder, settings: settings);
      },
    );
  }
}


