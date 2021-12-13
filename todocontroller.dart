import 'package:mobx/mobx.dart';
import 'package:flutter/material.dart';

part 'todocontroller.g.dart';

class TodoController = TodoBaseController with _$TodoController;

abstract class TodoBaseController with Store {
  @observable
  ObservableList<String> tarefas = ObservableList.of([]);

  @observable
  String hintText = "Add tarefa - Adiciona tarefa à lista\nEdt índice nova_tarefa-Edita a tarefa daquele índice para nova_tarefa\nRmv indice - Remove a tarefa daquele índice";
  
  @observable
  Icon icon = Icon(Icons.create_rounded);

  @observable
  ThemeData scrnTheme = ThemeData.dark();
  
  @observable
  bool changed = false;

  int id = 0;
  String descricao ="";
  String task = "";
  bool darkTheme = false;
  

  

  @action
  void adicionaTarefa(tarefa) {
    tarefas.add("${tarefas.length+1}. "+tarefa);
    changed = true;
  }
  
  @action
  void removeTarefa(id) {
    tarefas.removeAt(id-1);
    changed = true;
    for (int i = id-1;i<tarefas.length; i++) {
      task  = tarefas.elementAt(i);
        int spaceIndex = task.indexOf(" ");
                int? index = int.tryParse(task.substring(0, spaceIndex).trim());
                String realtask = task
                    .substring(spaceIndex + 1, task.length)
                    .trim();
                index ??= 0;
      editaTarefa(i+1, realtask);
    }

  }

  @action
  void editaTarefa(id, desc) {
    tarefas.removeAt(id-1);
    tarefas.insert(id-1, "${id}. "+desc);
    changed = true;
  }

  @action
  void ScreenTheme() {
    darkTheme ? icon = Icon(Icons.wb_sunny) : icon = Icon(Icons.bedtime_rounded);
    darkTheme ? scrnTheme = ThemeData.dark() : scrnTheme = ThemeData(
        primarySwatch: Colors.blue,
      );
  }

  @action
  void changedFalse() {
    changed = false;
  }

}
