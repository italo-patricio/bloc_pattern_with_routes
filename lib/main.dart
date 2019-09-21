import 'package:estudo_bloc_pattern/core/module_widget_with_router.dart';
import 'package:estudo_bloc_pattern/modules/app/app_module.dart';
import 'package:estudo_bloc_pattern/modules/counter/counter_module.dart';
import 'package:flutter/material.dart';


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
     *  TODO criar outra opcao de carregamento das rotas 
     */
    // List<ModuleWidgetWithRouter>  modulesLoaded =  [
    //   AppModule(),
    //   CounterModule()
    // ];

    // modulesLoaded.forEach((m) => routes.addAll(m.routes));

    return MaterialApp(
      title: 'Flutter Slidy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: staticRoutes,
    );
  }
}