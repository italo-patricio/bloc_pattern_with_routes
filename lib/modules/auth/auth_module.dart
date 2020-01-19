import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:estudo_bloc_pattern/modules/auth/auth_router.dart';
import 'package:flutter/material.dart';

class AuthModule extends ModuleWidget {
  @override
  List<Bloc<BlocBase>> get blocs => null;

  @override
  List<Dependency> get dependencies => null;

  @override
  Widget get view => AuthRouter();

  static Inject get to => Inject<AuthModule>.of();

}