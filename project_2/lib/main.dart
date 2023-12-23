import 'package:flutter/material.dart';
import 'package:project_2/circle.dart';
import 'package:project_2/container.dart';
void main(){
  runApp(Homepage());
}

class Homepage extends StatelessWidget{
  final List _post = [
    'post1',
    'post2',
    'post3',
    'post4',
  ];
  final List _stories = [
    'story',
    'story',
    'story',
    'story',
    'story',
    'story',
    'story',
    'story',
    'story',
  ];
  // const Homepage({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(

      body: Column(
          children: [
            Container(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _stories.length,
                itemBuilder: (context, index){
                  return Mycircle(childs: _stories[index]);
                },
              ),
            ),
            Expanded(
              child:ListView.builder(
              itemCount: _post.length,
              itemBuilder: (context, index) {
                return Mycontainer(
                //  child : _post[index],
                );
              },
            ), 
            ),
            
          ],
        ),
      ),
    );
  }
}