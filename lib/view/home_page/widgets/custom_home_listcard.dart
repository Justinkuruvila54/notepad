// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, non_constant_identifier_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:notepad/controller/home_screen_controller.dart';
import 'package:notepad/utils/color_constants.dart';

class Customhomecard extends StatefulWidget {
  Customhomecard(
      {super.key,
      required this.title,
      required this.description,
      required this.date,
      required this.colorlist,
      this.onpresseddelete});
  final String title;
  final String description;
  final String date;
  final Color colorlist;
  final void Function()? onpresseddelete;

  Homescreencontroller homecontrolerobj = Homescreencontroller();
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
          color: widget.colorlist,
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
                    widget.title,
                    style: TextStyle(fontSize: 20),
                  ),
                  Row(
                    children: [
                      Icon(Icons.edit),
                      SizedBox(
                        width: 15,
                      ),
                      InkWell(
                          onTap: () {
                            widget.onpresseddelete!();
                            setState(() {
                              
                            });
                          },
                          child: Icon(Icons.delete))
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
                    widget.description,
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
                    widget.date,
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
