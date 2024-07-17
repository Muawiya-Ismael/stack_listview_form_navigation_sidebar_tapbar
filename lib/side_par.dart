import 'package:flutter/material.dart';

import 'package:stack_listview_form/stack.dart';
import 'form/form.dart';
import 'learn_listview/listview.dart';


class SidePar extends StatelessWidget {
  const SidePar({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child:ListView(
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text('USER',style:TextStyle(color:Colors.black,fontSize:25,fontWeight: FontWeight.bold),),
            accountEmail: Text(''),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
          ),
          ListTile(
            title: const Text('Stack Page', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold),),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> const LearnStack(),),
              );
            },
          ),
          ListTile(
            title: const Text('ListView Page', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold),),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> LearnListview(),),
              );
            },
          ),
          ListTile(
            title: const Text('Form Page', style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold),),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> const FormApp(),),
              );
            },
          )
        ],
      ) ,
    );
  }
}

/*
LearnListview(),
const FormApp(),*/
