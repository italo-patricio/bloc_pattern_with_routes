import 'package:estudo_bloc_pattern/modules/admin/admin_module.dart';
import 'package:estudo_bloc_pattern/modules/app/app_module.dart';
import 'package:estudo_bloc_pattern/modules/auth/pages/auth_password_reset.dart';
import 'package:flutter/material.dart';

import 'auth_master.dart';

class AuthRouter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      initialRoute: '/',
      onGenerateRoute: (RouteSettings settings) {
        WidgetBuilder builder;
        switch (settings.name) {
          case '/':
            builder = (BuildContext _) => AuthPageMaster();
            break;
          case 'app':
            builder = (BuildContext context) => AppModule();
            break;
          case 'admin':
            builder = (BuildContext context) => AdminModule();
            break;
          case 'password_reset':
            builder = (BuildContext context) => AuthPagePasswordReset();
            break;
          default:
            throw Exception('Invalid route: ${settings.name}');
        }
        return MaterialPageRoute(builder: builder, settings: settings);
      },
    );
  }
}
