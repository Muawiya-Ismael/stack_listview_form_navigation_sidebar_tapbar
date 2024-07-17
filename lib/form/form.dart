import 'package:flutter/material.dart';
import 'package:stack_listview_form/form/password_form.dart';

import '../home.dart';
import 'email_form.dart';

class FormApp extends StatelessWidget {
  const FormApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: const Text('Learn Listview', style: TextStyle(color: Colors.white),),
          iconTheme:const IconThemeData(color: Colors.white),
        ),
        body:  const FormExample(),
    );
  }
}

class FormExample extends StatefulWidget {
  const FormExample({super.key});

  @override
  State<FormExample> createState() => _FormExampleState();
}

class _FormExampleState extends State<FormExample> {
  final GlobalKey<FormState> emailFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> passwordFormKey = GlobalKey<FormState>();
  Widget massage = const Text(" ");

  void buttonAction(){
    if(emailFormKey.currentState!.validate() && passwordFormKey.currentState!.validate()){
      setState(() {
        massage = const Text("Valid Email and Password.", style: TextStyle(color: Colors.green),);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context)=> const Home(),),
        );
      });
    }else{
      setState(() {
        massage = const Text("Invalid Email or Password.", style: TextStyle(color: Colors.red),);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 50,right: 50),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              EmailForm(emailFormKey: emailFormKey), // Pass key to EmailForm
              PasswordForm(passwordFormKey: passwordFormKey),
              const SizedBox(height: 25),
              ElevatedButton(onPressed: buttonAction, child: const Text("Enter", style: TextStyle(),)),
              const SizedBox(height: 25),
              massage,
            ],
          ),
    );
  }
}










/*
class FormExample extends StatefulWidget {
  const FormExample({super.key});

  @override
  State<FormExample> createState() => _FormExampleState();
}

class _FormExampleState extends State<FormExample> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Enter your email',
            ),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                }
              },
              child: const Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}
*/