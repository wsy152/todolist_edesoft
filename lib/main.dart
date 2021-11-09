import 'package:builders/builders.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lista_de_tarefas/app/app_module.dart';
import 'package:lista_de_tarefas/app/app_widget.dart';

void main() {
  Builders.systemInjector(Modular.get);
  return runApp(ModularApp(
    module: AppModule(),
    child: AppWidget(),
  ));
}
