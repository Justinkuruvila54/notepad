// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:notepad/controller/home_screen_controller.dart';

import 'package:notepad/utils/color_constants.dart';
import 'package:notepad/view/home_page/widgets/custom_home_listcard.dart';
import 'package:notepad/view/home_page/widgets/custombootomlist.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  //List colorlist = [Colors.orange, Colors.green, Colors.red, Colors.blue];
  Homescreencontroller homecontrolerobj = Homescreencontroller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colorconstants.backgroundColor,
      appBar: AppBar(
        backgroundColor: Colorconstants.appbar,
        title: Text(
          "Notepad",
          style: TextStyle(
              color: Colorconstants.textcolor,
              fontSize: 24,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Colorconstants.backgroundColor,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.separated(
              itemBuilder: (context, index) => Customhomecard(
                    title: homecontrolerobj.notelist[index]["title"],
                    description: homecontrolerobj.notelist[index]["des"],
                    date: homecontrolerobj.notelist[index]["date"],
                    colorlist: homecontrolerobj.notelist[index]["color"],
                  ),
              separatorBuilder: (context, index) => SizedBox(
                    height: 10,
                  ),
              itemCount: homecontrolerobj.notelist.length),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Bottomsheetcustomcard(
                    onsavepressed: () {
                      homecontrolerobj.adddata();
                      setState(() {
                        
                      });
                    },
                  )));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
