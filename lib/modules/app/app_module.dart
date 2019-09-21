import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:estudo_bloc_pattern/modules/app/app_router.dart';
import 'package:flutter/material.dart';


class AppModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => AppRouter();

  static Inject get to => Inject<AppModule>.of();


}
