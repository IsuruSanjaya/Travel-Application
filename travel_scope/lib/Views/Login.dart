// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color:
                    Color.fromARGB(255, 169, 189, 204), // Set the background color
                borderRadius: BorderRadius.circular(5), // Set the border radius
              ),
            ),
            SingleChildScrollView(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 50), // Add some space at the top
                    Image.asset(
                      'assets/images/location.png', // Replace with the actual path or URL
                      height: 200,
                      width: 200,
                    ),
                    SizedBox(height: 20),
                    Container(
                      
                      width: 300,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Username',
                        ),
                      ),
                    //   color: Color.fromARGB(
                    //       255, 237, 231, 236), 
                    //       // Set the background color
                    // ),
                    SizedBox(height: 10),
                    
                    
                    Container(
                      width: 300,
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Password',
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: 200,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('Login'),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: 200,
                      child: TextButton(
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.red),
                        ),
                        onPressed: () {},
                        child: Text('Already have an account'),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: 200,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.red),
                        ),
                        onPressed: () {},
                        child: Text('Google Login'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
