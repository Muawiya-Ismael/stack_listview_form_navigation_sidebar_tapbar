import 'package:flutter/material.dart';

class MySquare extends StatelessWidget {
  const MySquare({super.key,required this.postName});
  final Widget postName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        color: Colors.deepPurple[100],
        height: 400,
        width: 400,
        child: postName,
      ),
    );
  }
}

