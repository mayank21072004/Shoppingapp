import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// class Mycontainer extends StatelessWidget {
//   final String child;
//    Mycontainer({required this.child});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//             height: 400,
//             color: Colors.blue,
//             margin: const EdgeInsets.all(5),
//             child: Center(
//               child: Text(
//                 child,
//                 style: const TextStyle(
//                   fontSize: 30,
//                   color: Colors.red,
//                   ),
//               ),
//             ),

//           );
//   }
// }

class Mycontainer extends StatefulWidget {
  const Mycontainer({super.key});

  @override
  State<Mycontainer> createState() => _MycontainerState();
}

class _MycontainerState extends State<Mycontainer> {
  void _showDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: const Text('warning'),
            content: const Text('Do you really want to quit?'),
            actions: [
              MaterialButton(
                onPressed: () {},
                child: const Text(
                  'yes',
                  style: TextStyle(
                    fontSize: 9,
                  ),
                ),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  'No',
                  style: TextStyle(
                    fontSize: 9,
                  ),
                ),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      // color: Colors.blue,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        //  decoration of the should not be twice
        color: Colors.blue,
      ),
      margin: const EdgeInsets.all(7),
      child: Column(
        children: [
          Container(
            height: 70,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.yellow[200],
              borderRadius: BorderRadius.circular(20),
            ),
            child: MaterialButton(
              padding: const EdgeInsets.all(7),
              // color: Colors.deepOrange,
              onPressed: _showDialog,
              child: const Text(
                'Show dialog',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
          ),
          Container(
            height: 70,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.green[200],
              borderRadius: BorderRadius.circular(20),
            ),
            child: MaterialButton(
              padding: const EdgeInsets.all(7),
              // color: Colors.deepOrange,
              onPressed: _showDialog,
              child: const Text(
                'Show dialog',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
