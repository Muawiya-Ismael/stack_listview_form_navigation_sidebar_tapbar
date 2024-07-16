import 'package:flutter/material.dart';
import 'package:stack_listview_form/learn_listview/posts/posts.dart';
import 'package:stack_listview_form/learn_listview/stores/stores.dart';


class LearnListview extends StatelessWidget {
  LearnListview({super.key});

  final List _posts = ['Post 1','Post 2', 'Post 3'];
  final List _stores = ['Store 1', 'Store 2', 'Store 3', 'Store 4', 'Store 5'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: const Text('Learn Listview', style: TextStyle(color: Colors.white),),

        ),

        body: Container(
          color: Colors.black87,
          child: Column(
            children: [
              Expanded(
                flex: 1,
                  child: Stores(_stores)
              ),
              Expanded(
                flex: 6,
                child: Posts(_posts),
              )
            ],
          ),
        )
    );
  }
}
