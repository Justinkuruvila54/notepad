import 'package:flutter/material.dart';

class Homescreencontroller {
  List notelist = [
    {
      "title": "title",
      "des": "description",
      "date": "date",
      "color": Colors.white
    }
  ];

  void adddata() {
    notelist.add({
      "title": "title",
      "des": "description",
      "date": "date",
      "color": Colors.red
    });
  }
}
