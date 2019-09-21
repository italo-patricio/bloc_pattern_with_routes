import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';

abstract class ModuleWidgetWithRouter extends ModuleWidget {
  Map<String, WidgetBuilder> get routes;
}