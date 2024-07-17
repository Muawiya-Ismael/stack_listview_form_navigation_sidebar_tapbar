import 'package:flutter/material.dart';
import 'package:stack_listview_form/stack.dart';

import 'learn_listview/listview.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(top:60,bottom:50),
          child: Text("Home", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
        ),
        iconTheme:const IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Expanded(
        child: Container(
          color:Colors.black,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed:(){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=> const LearnStack(),),
                  );
                }, child: const Text('Stack Page', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold),),),
                ElevatedButton(onPressed:(){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=> LearnListview(),),
                  );
                }, child: const Text('ListView Page', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold),),),
              ],
            )
          ),
        ),
      )
    );
  }
}
