import 'package:flutter/material.dart';
import 'package:stack_listview_form/learn_listview/stores/circle.dart';

class Stores extends StatelessWidget {
  const Stores(this._stores,{super.key});
  final List _stores;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: _stores.length,
      itemBuilder:(context , index){
        return MyCircle(
          storeName:Center(
            child:Text(_stores[index], style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold, fontSize: 18)),
          ),
        );
      },
    );
  }
}

