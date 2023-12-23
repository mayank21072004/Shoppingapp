import 'package:flutter/material.dart';

class Mycircle extends StatelessWidget {
  final String childs;

  Mycircle({required this.childs});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      margin: EdgeInsets.all(3),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.red,
      ),
      child: Center(child: Text(childs)),
    );
  }
}