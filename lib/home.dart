import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stack_listview_form/side_par.dart';
import 'package:stack_listview_form/stack.dart';

import 'learn_listview/listview.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
        drawer: const SidePar(),
        appBar: AppBar(
          bottom:const TabBar(
            indicatorColor: Colors.white,
            dividerColor: Colors.black,
            tabs: [
              Tab(
                icon: Icon(Icons.home,color:Colors.grey,),
              ),
              Tab(
                icon: Icon(Icons.graphic_eq,color:Colors.grey,shadows: [],),
              )
            ],
          ),
          title: const Padding(
            padding: EdgeInsets.only(top:60,bottom:50),
            child: Text("Home", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
          ),
          iconTheme:const IconThemeData(color: Colors.white),
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        body: TabBarView(
          children: [
            Container(
              color: Colors.black,
              child:Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed:(){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=> const LearnStack(),),
                      );
                    }, child: const Text('Stack Page', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold),),),
                  ],
                ),
              )
            ),
            Container(
                color: Colors.black,
                child:Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(onPressed:(){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=> LearnListview(),),
                        );
                      }, child: const Text('ListView Page', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold),),),],
                  ),
                )
            ),],
        )
      )
    );
  }
}
