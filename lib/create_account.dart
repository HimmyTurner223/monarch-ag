import 'package:flutter/material.dart';
import 'package:helloworld/Home.dart';
import 'package:helloworld/page3.dart';

class CreateAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Account'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            CustomTextField('First Name'),
            SizedBox(height: 14),
            CustomTextField('Last Name'),
            SizedBox(height: 14),
            CustomTextField('Email'),
            SizedBox(height: 14),
            CustomTextField('Username'),
            SizedBox(height: 14),
            CustomTextField('Password'),
            SizedBox(height: 14),
            CustomTextField('Confirm Password'),
            SizedBox(height: 64),
            ElevatedButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)))),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: const Text(
                  'Get Started',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String labelText;

  const CustomTextField(this.labelText);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: labelText,
        enabledBorder: OutlineInputBorder(),
      ),
    );
  }
}
