import 'dart:math';

import 'package:flutter/material.dart';

class Task extends ChangeNotifier {
  String title;
  Task(this.title);
  
  void randomize() {
    List<String> listTasks = [
      "Estudar Flutter",
      "Dormir 12h",
      "Trabalhar 16h",
      "Chorar"
    ];
    this.title = listTasks[Random().nextInt(listTasks.length)];
    notifyListeners();
  }
}


