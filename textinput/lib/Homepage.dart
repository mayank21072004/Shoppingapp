import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  final _textController = TextEditingController();
   String Hey = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              color: Colors.red,
              child: Center(child: Text(Hey)),
            ),
            TextField(
              controller: _textController,
              // is this is not invoked then none of the function from the text controller will work here
              decoration: InputDecoration(
                hintText: 'What is ur name',
                focusColor: Color(0xFFFFC107),
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: (){
                    _textController.clear();
                  }, 

                  icon: Icon(Icons.cancel))
              ),
            ),
            MaterialButton(
              onPressed: (){
                setState(() {
                  Hey = 'hello';
                });
              },
              color: Colors.blue,
              child: Text('press me'),
                
              ),
          ],
        ),
      ),
    );
  }
}