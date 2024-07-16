import 'package:flutter/material.dart';

class MyCircle extends StatelessWidget {
  const MyCircle({super.key,required this.storeName});
  final Widget storeName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.deepPurple[100],
        ),
        child: storeName,
      ),
    );
  }
}