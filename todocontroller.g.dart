// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todocontroller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TodoController on TodoBaseController, Store {
  final _$tarefasAtom = Atom(name: 'TodoBaseController.tarefas');

  @override
  ObservableList<String> get tarefas {
    _$tarefasAtom.reportRead();
    return super.tarefas;
  }

  @override
  set tarefas(ObservableList<String> value) {
    _$tarefasAtom.reportWrite(value, super.tarefas, () {
      super.tarefas = value;
    });
  }

  final _$hintTextAtom = Atom(name: 'TodoBaseController.hintText');

  @override
  String get hintText {
    _$hintTextAtom.reportRead();
    return super.hintText;
  }

  @override
  set hintText(String value) {
    _$hintTextAtom.reportWrite(value, super.hintText, () {
      super.hintText = value;
    });
  }

  final _$iconAtom = Atom(name: 'TodoBaseController.icon');

  @override
  Icon get icon {
    _$iconAtom.reportRead();
    return super.icon;
  }

  @override
  set icon(Icon value) {
    _$iconAtom.reportWrite(value, super.icon, () {
      super.icon = value;
    });
  }

  final _$scrnThemeAtom = Atom(name: 'TodoBaseController.scrnTheme');

  @override
  ThemeData get scrnTheme {
    _$scrnThemeAtom.reportRead();
    return super.scrnTheme;
  }

  @override
  set scrnTheme(ThemeData value) {
    _$scrnThemeAtom.reportWrite(value, super.scrnTheme, () {
      super.scrnTheme = value;
    });
  }

  final _$changedAtom = Atom(name: 'TodoBaseController.changed');

  @override
  bool get changed {
    _$changedAtom.reportRead();
    return super.changed;
  }

  @override
  set changed(bool value) {
    _$changedAtom.reportWrite(value, super.changed, () {
      super.changed = value;
    });
  }

  final _$TodoBaseControllerActionController =
      ActionController(name: 'TodoBaseController');

  @override
  void adicionaTarefa(dynamic tarefa) {
    final _$actionInfo = _$TodoBaseControllerActionController.startAction(
        name: 'TodoBaseController.adicionaTarefa');
    try {
      return super.adicionaTarefa(tarefa);
    } finally {
      _$TodoBaseControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeTarefa(dynamic id) {
    final _$actionInfo = _$TodoBaseControllerActionController.startAction(
        name: 'TodoBaseController.removeTarefa');
    try {
      return super.removeTarefa(id);
    } finally {
      _$TodoBaseControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void editaTarefa(dynamic id, dynamic desc) {
    final _$actionInfo = _$TodoBaseControllerActionController.startAction(
        name: 'TodoBaseController.editaTarefa');
    try {
      return super.editaTarefa(id, desc);
    } finally {
      _$TodoBaseControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void ScreenTheme() {
    final _$actionInfo = _$TodoBaseControllerActionController.startAction(
        name: 'TodoBaseController.ScreenTheme');
    try {
      return super.ScreenTheme();
    } finally {
      _$TodoBaseControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changedFalse() {
    final _$actionInfo = _$TodoBaseControllerActionController.startAction(
        name: 'TodoBaseController.changedFalse');
    try {
      return super.changedFalse();
    } finally {
      _$TodoBaseControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
tarefas: ${tarefas},
hintText: ${hintText},
icon: ${icon},
scrnTheme: ${scrnTheme},
changed: ${changed}
    ''';
  }
}
