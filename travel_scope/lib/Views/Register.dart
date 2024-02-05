// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _genderController = TextEditingController();
  final TextEditingController _countryController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Form(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/location.png', // Replace with your image asset
                  height: 100,
                  width: 100,
                ),
                SizedBox(height: 10),
                Container(
                  width: 300,
                  child: TextFormField(
                    controller: _nameController,
                    decoration: InputDecoration(
                      hintText: 'Name',
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: 300,
                  child: TextFormField(
                    controller: _ageController,
                    decoration: InputDecoration(
                      hintText: 'Age',
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: 300,
                  
                  child: TextFormField(
                    controller: _genderController,
                    decoration: InputDecoration(
                      hintText: 'Gender',
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: 300,
                  child: TextFormField(
                    controller: _countryController,
                    decoration: InputDecoration(
                      hintText: 'Country',
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: 300,
                  child: TextFormField(
                    controller: _mobileController,
                    decoration: InputDecoration(
                      hintText: 'Mobile Number',
                    ),
                    keyboardType: TextInputType.phone,
                  ),
                ),
                Container(
                  width: 300,
                  alignment: Alignment.center, // Center the placeholder
                  child: TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(labelText: 'Email'),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    // Handle registration logic here
                    // Access the entered values using _nameController.text, _ageController.text, etc.
                  },
                  child: Text('Register'),
                ),
                SizedBox(height: 10),
                TextButton(
                  onPressed: () {
                    // Navigate to login screen for existing users
                  },
                  child: Text('Already have an account? Login here'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
