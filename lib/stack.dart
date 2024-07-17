import 'dart:ui';

import 'package:flutter/material.dart';

class LearnStack extends StatelessWidget {
  const LearnStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(top:40,bottom:10),
          child: Text("Learn Stack", style: TextStyle(color: Colors.white),),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
        iconTheme:const IconThemeData(color: Colors.white),

      ),
      body: Container(
        color: Colors.black,
        child: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 200,
                height: 200,
                color: Colors.red,
              ),
              Container(
                width: 150,
                height: 150,
                color: Colors.blue,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.green,
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.yellow,
              )
            ],
          ),
        )
      )
    );
  }
}
