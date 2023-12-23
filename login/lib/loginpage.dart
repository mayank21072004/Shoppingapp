import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget {
  // const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.green[100],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Login
          Container(
            margin: EdgeInsets.all(screenWidth * 0.05),
            height: screenHeight * 0.25,
            width: screenWidth * 0.9,
            decoration: BoxDecoration(
              color: Colors.green[300],
              borderRadius: BorderRadius.circular(20),
            ),
            child: Icon(
              Icons.lock,
              size: 100,
            ),
          ),

          // welcome back u have missed karke
          Text(
            'WELCOME BACK , YOU HAVE BEEN MISSED',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Roboto',
            ),
          ),

          // username textfield

          Padding(
            // padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
            padding: EdgeInsets.only(left: screenWidth * 0.05,top: screenWidth * 0.05,right: screenWidth * 0.05),
            child: Mytextfield(),
          ),

          // password textfield
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
            child: Mytextfieldpassword(),
          ),

          // forget password
          Text(
            'forget password ?',
          ),
          

          // sigin button
          Padding(
            padding: EdgeInsets.all(screenWidth*0.05),
            child: MaterialButton(
              onPressed: (){},
              height: screenHeight*0.125,
              minWidth: screenWidth*0.9,
              textColor: Colors.white,
              color: Colors.black,
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0), // Adjust the radius as needed
            ),
              child: Text(
                'SIGN IN',
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
                ),
              ),
          ),

          // or continue with


          // google or IOS
          Row(
            children: [
              Image.asset(
                'lib/images/ios.png',
                height: 72,
              ),
            ],
          ),

          // not a member register now
        ],
      ),
    );
  }
}

class Mytextfield extends StatefulWidget {
  const Mytextfield({super.key});

  @override
  State<Mytextfield> createState() => _MytextfieldState();
}

class _MytextfieldState extends State<Mytextfield> {
  TextEditingController _textcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _textcontroller,
      decoration: InputDecoration(
        hintText: 'Ussername',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        suffixIcon: IconButton(
          onPressed: () {
            _textcontroller.clear();
          },
          icon: Icon(Icons.cancel),
        ),
      ),
    );
  }
}

class Mytextfieldpassword extends StatefulWidget {
  const Mytextfieldpassword({super.key});

  @override
  State<Mytextfieldpassword> createState() => _MytextfieldpasswordState();
}

class _MytextfieldpasswordState extends State<Mytextfieldpassword> {
  TextEditingController _textcontrollerpassword = TextEditingController();
  bool _showpassword = false;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _textcontrollerpassword,
      obscureText: _showpassword,
      decoration: InputDecoration(
        hintText: 'Password',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        suffixIcon: IconButton(
          onPressed: () {
            // _textcontrollerpassword.clear();
            setState(() {
              _showpassword = !_showpassword;
            });
          },
          icon: Icon(
            _showpassword ? Icons.visibility : Icons.visibility_off,
          ),
        ),
      ),
    );
  }
}
