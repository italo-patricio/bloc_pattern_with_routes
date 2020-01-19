import 'package:estudo_bloc_pattern/modules/admin/pages/preventive_maintenance/admin_preventive_maintenance_clients.dart';
import 'package:estudo_bloc_pattern/modules/auth/auth_module.dart';
import 'package:flutter/material.dart';

import 'modules/app/app_module.dart';

void main() => runApp(AppWidget());

Map<String, WidgetBuilder> staticRoutes = {
  '/': (context) => AppModule(),
};

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Map<String, WidgetBuilder> routes = Map();
    routes.addAll(staticRoutes);

    /**
     *   criar outra opcao de carregamento das rotas 
     */
    // List<ModuleWidgetWithRouter>  modulesLoaded =  [
    //   AppModule(),
    //   CounterModule()
    // ];

    // modulesLoaded.forEach((m) => routes.addAll(m.routes));

    return MaterialApp(
      title: 'Flutter Slidy',
      theme: ThemeData(
        // #0A6DBA
        primaryColor: Color(0xFF2699FB),
        secondaryHeaderColor: Colors.black,
        // primaryColor: Colors.grey
      ),
      initialRoute: '/',
      routes: staticRoutes,
    );
  }
}
