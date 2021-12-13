import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:todolist/todocontroller.dart';

final controller = TodoController();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Observer(
        builder: (_) => MaterialApp(
              title: 'Flutter Demo',
              theme: controller.scrnTheme,
              home: const MyHomePage(title: 'To Do List'),
            ));
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {

    when(
        (_) => controller.tarefas.length == 7,
        () => showDialog(
              context: context,
              builder: (_) => const AlertDialog(
                title:  Text('Hey!'),
                content:  Text('Que tal realizar algumas dessas?'),
              ),
            ));

    TextEditingController nameTask = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.list_alt_rounded, size: 20,),
        centerTitle: true,
        title: Text(title, textAlign: TextAlign.center),
      ),
      body: Observer(
          builder: (_) => ListView.builder(
                itemBuilder: (_, i) => ListTile(
                  title: Text(controller.tarefas.toList()[i]),
                ),
                itemCount: controller.tarefas.toList().length,
              )),
      bottomSheet: Observer(
        builder: (_) => TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: controller.hintText,
            ),
            controller: nameTask,
            onSubmitted: (String value) {
              final startIndex = value.indexOf(" ");
              final action = value.substring(0, startIndex).trim();
              final description =
                  value.substring(startIndex + 1, value.length).trim();
              if (action == 'Add') {
                controller.adicionaTarefa(description);
              } else if (action == 'Edt') {
                final spaceIndex = description.indexOf(" ");
                final index = description.substring(0, spaceIndex).trim();
                final realDescription = description
                    .substring(spaceIndex + 1, description.length)
                    .trim();
                controller.editaTarefa(int.tryParse(index), realDescription);
              } else if (action == 'Rmv') {
                controller.removeTarefa(int.tryParse(description));
              }
            }),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => {
                controller.darkTheme
                    ? controller.darkTheme = false
                    : controller.darkTheme = true,
                controller.ScreenTheme()
                //controller.darkTheme ? controller.icon = Icon(Icons.wb_sunny) : icon = Icon(Icons.nightlife)
              },
          child: Observer(builder: (_) => controller.icon)),
    );
  }
}