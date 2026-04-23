import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'widgets/task_widget.dart';
import 'models/task.dart';
void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Task(""),
      child: MaterialApp(
        home: MyApp(),
      ),
    )
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("My to-do list")),
        drawer: const Drawer(),
        body: Center(
          child: TaskWidget(),
        ),
        floatingActionButton: Consumer<Task>(
          builder: (context, storedValue, child) {
            return FloatingActionButton(
                child: Icon(Icons.change_circle_outlined),
                onPressed: () {
                  storedValue.randomize();
                  print(storedValue.title);
                });
          },
        ),
      ),
    );
  }
}