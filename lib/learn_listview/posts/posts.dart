import 'package:flutter/material.dart';
import 'package:stack_listview_form/learn_listview/posts/square.dart';

class Posts extends StatelessWidget {
  const Posts(this._posts,{super.key});
  final List _posts;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _posts.length,
      itemBuilder:(context , index){
        return MySquare(
          postName:Center(
            child:Text(_posts[index], style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold, fontSize: 48)),
          ),
        );
      },
    );
  }
}

