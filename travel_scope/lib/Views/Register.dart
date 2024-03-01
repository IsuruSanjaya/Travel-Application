import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:travel_scope/Views/Login.dart';
import 'package:travel_scope/Views/OTP_Screen.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String? verificationId; // Declare verificationId variable

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _genderController = TextEditingController();
  final TextEditingController _countryController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> _submitForm() async {
    String phoneNumber =
        '+94${_mobileController.text}'; // Modify country code as needed
    try {
      await _auth.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        verificationCompleted: (PhoneAuthCredential credential) async {
          // Automatic verification
          await _auth.signInWithCredential(credential);
          // Navigate to OTP Screen or do something else
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => OTP(verificationId: verificationId ?? ""),
            ),
          );
        },
        verificationFailed: (FirebaseAuthException e) {
          print('Error: ${e.message}');
          // Handle verification failure
        },
        codeSent: (String verificationId, int? resendToken) {
          // Navigate to OTP Screen and pass verificationId
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => OTP(verificationId: verificationId),
            ),
          );
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          // Handle timeout
        },
      );
    } catch (e) {
      print('Error sending OTP: $e');
      // Handle error
    }
  }

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
                TextFormField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    hintText: 'Name',
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: _ageController,
                  decoration: InputDecoration(
                    hintText: 'Age',
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: _genderController,
                  decoration: InputDecoration(
                    hintText: 'Gender',
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: _countryController,
                  decoration: InputDecoration(
                    hintText: 'Country',
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: _mobileController,
                  decoration: InputDecoration(
                    hintText: 'Mobile Number',
                  ),
                  keyboardType: TextInputType.phone,
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(labelText: 'Email'),
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: 30),
                ElevatedButton(
                  onPressed: _submitForm,
                  child: Text('Register'),
                ),
                SizedBox(height: 10),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Login()),
                    );
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
