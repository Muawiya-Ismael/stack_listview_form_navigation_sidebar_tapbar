import 'package:flutter/material.dart';
import 'package:password_strength/password_strength.dart';


class PasswordForm extends StatefulWidget {
  const PasswordForm({super.key, required this.passwordFormKey});
  final GlobalKey<FormState> passwordFormKey;

  @override
  State<PasswordForm> createState() => _PasswordFormState();
}

class _PasswordFormState extends State<PasswordForm> {
  bool passToggle = true;
 // String errorMassage = " ";

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.passwordFormKey,
      autovalidateMode: AutovalidateMode.always,
      child: TextFormField(
        obscureText: passToggle,
        decoration:InputDecoration(
          labelText: "Enter your Password.",
          //errorText: errorMassage,
          errorMaxLines: 4,
          prefixIcon: const Icon(Icons.lock),
          suffixIcon: InkWell(
            onTap:(){
              setState(() {
                passToggle = !passToggle;
              });
            },
            child: Icon(passToggle ? Icons.visibility: Icons.visibility_off),
          ),

        ),
        validator: (String? value) {
          if (value == null || value.isEmpty) {
           /* setState(() {
              errorMassage = 'Please enter your Password.';
            });*/
            return'Please enter your Password.';
          }
          if (estimatePasswordStrength(value)<0.3 && !RegExp(r'^(?=.*[A-Z].*[A-Z])(?=.*[!@#$&*.])(?=.*[0-9].*[0-9])(?=.*[a-z].*[a-z].*[a-z]).{8}$').hasMatch(value)){
            /*setState(() {
              errorMassage = 'Error: Password must be at least 8 characters, include uppercase and lowercase letters, a number, and a special character.';
            });*/
            return '''Error: Password must contain:
  - 8 characters, upper and lower.
  - number.
  - special character.''';
          }
          return null;
        },
      ),
    );
  }
}

//if(!RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$').hasMatch(value)){//
//             return "Error: Password must be at least 8 characters, include uppercase and lowercase letters, a number, and a special character.";
//           }
