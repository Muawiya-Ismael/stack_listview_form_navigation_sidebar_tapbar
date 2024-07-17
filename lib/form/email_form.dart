import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class EmailForm extends StatefulWidget {
  const EmailForm({super.key, required this.emailFormKey});
  final GlobalKey<FormState> emailFormKey;

  @override
  State<EmailForm> createState() => _EmailFormState();
}

class _EmailFormState extends State<EmailForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.emailFormKey,
      autovalidateMode: AutovalidateMode.always,
      child: TextFormField(
        decoration: const InputDecoration(
          labelText: "Enter your Email.",
          errorMaxLines: 2,
          prefixIcon: Icon(Icons.email)
        ),
        validator: (String? value) {
          if (value == null || value.isEmpty) {
            return 'Please enter your Email.';
          }
          if(!EmailValidator.validate(value)){//RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value)
            return """Error: Email must be in a valid format 
(e.g., user@example.com).""";
          }
          return null;
        },
      ),
    );
  }
}