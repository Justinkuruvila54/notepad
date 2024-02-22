// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:notepad/utils/color_constants.dart';

class Customhomecard extends StatefulWidget {
  const Customhomecard({super.key});

  @override
  State<Customhomecard> createState() => _CustomhomecardState();
}

class _CustomhomecardState extends State<Customhomecard> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colorconstants.textcolor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Tittle",
                    style: TextStyle(fontSize: 20),
                  ),
                  Row(
                    children: [
                      Icon(Icons.edit),
                      SizedBox(
                        width: 15,
                      ),
                      Icon(Icons.delete)
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "description",
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "date",
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Icon(Icons.share),
                ],
              ),
            )
          ],
        ),
      ),
    ]);
  }
}
