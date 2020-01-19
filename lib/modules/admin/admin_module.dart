import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:estudo_bloc_pattern/modules/admin/admin_router.dart';
import 'package:flutter/material.dart';

class AdminModule extends ModuleWidget {
  @override
  List<Bloc<BlocBase>> get blocs => null;

  @override
  List<Dependency> get dependencies => null;

  @override
  Widget get view => AdminRouter();

  static Inject get to => Inject<AdminModule>.of();
}