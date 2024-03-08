import 'package:flutter/material.dart';
import 'package:helloworld/Home.dart';
import 'package:helloworld/page3.dart';

class CreateAccount extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Account'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: ListView(
            shrinkWrap: true,
            children: [
              CustomTextField('First Name', "Please enter a first name"),
              SizedBox(height: 14),
              CustomTextField('Last Name', "Please enter a last name"),
              SizedBox(height: 14),
              CustomTextField('Email', "Please enter an email"),
              SizedBox(height: 14),
              CustomTextField('Username', "Please enter a username"),
              SizedBox(height: 14),
              CustomTextField('Password', "Please enter a password"),
              SizedBox(height: 14),
              CustomTextField('Confirm Password', "Please confirm password"),
              SizedBox(height: 64),
              ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)))),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const HomePage()));
                  }
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
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String labelText;
  final String validatorText;

  const CustomTextField(this.labelText, this.validatorText);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: labelText,
        enabledBorder: OutlineInputBorder(),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return validatorText;
        }
        return null;
      },
    );
  }
}
