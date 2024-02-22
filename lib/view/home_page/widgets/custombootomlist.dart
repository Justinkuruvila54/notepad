// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, must_be_immutable

import 'package:flutter/material.dart';
import 'package:notepad/controller/home_screen_controller.dart';
import 'package:notepad/utils/color_constants.dart';
import 'package:notepad/utils/color_database.dart';

class Bottomsheetcustomcard extends StatelessWidget {
  Bottomsheetcustomcard({
    super.key,
    this.onsavepressed,
  });

  Homescreencontroller homecontrolerobj = Homescreencontroller();

  int slectedindex = 0;
  final void Function()? onsavepressed;

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (context, bottomsetState) => Container(
        decoration: BoxDecoration(
            color: Colorconstants.lightgreen,
            borderRadius: BorderRadius.circular(10)),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                label: Text(
                  "Title",
                  style: TextStyle(color: Colors.black),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(7),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 15),
          TextField(
            maxLines: 3,
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              label: Text(
                "Description",
                style: TextStyle(color: Colors.black),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(7),
                ),
              ),
            ),
          ),
          SizedBox(height: 15),
          TextField(
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              label: Text(
                "Date",
                style: TextStyle(color: Colors.black),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(7),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) => InkWell(
                          onTap: () {
                            slectedindex = index;

                            bottomsetState(() {});
                          },
                          child: Center(
                            child: Container(
                              height: index == slectedindex ? 60 : 40,
                              width: index == slectedindex ? 60 : 40,
                              decoration: BoxDecoration(
                                  color: Colordatabase.colorlist[index]),
                            ),
                          ),
                        ),
                    separatorBuilder: (context, index) => SizedBox(
                          width: 10,
                        ),
                    itemCount: 4),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                  child: Container(
                      height: 50,
                      color: Colors.grey,
                      child: Center(child: Text("cancel")))),
              SizedBox(
                width: 10,
              ),
              Expanded(
                  child: InkWell(
                onTap: () {
                  onsavepressed!();
                  Navigator.pop(context);
                },

                //Navigator.pop(context);

                child: Container(
                    height: 50,
                    color: Colors.grey,
                    child: Center(child: Text("save"))),
              ))
            ],
          )
        ]),
      ),
    );
  }
}
