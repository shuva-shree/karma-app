import 'package:flutter/material.dart';
import '../api/api_service.dart';
import 'package:karma/screens/drive_page.dart';

final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final emailText = TextEditingController();
  final passwordText = TextEditingController();

  callLoginApi() {
    final service = ApiServices();

    service.apiCallLogin(
      {
        "email": emailText.text,
        "password": passwordText.text,
      },
    ).then((value) {
      if (value.error != null) {
        print("get data >>>>>> " + value.error!);
      } else {
        Navigator.pushReplacementNamed(context, DrivePage.routeName);
      }
    });
  }

  Widget? _buildEmail() {
    return TextFormField(
      controller: emailText,
      decoration: InputDecoration(
        hintText: 'Email',
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
      ),
      validator: (String? value) {
        if (value!.isEmpty) {
          return 'Email is required';
        }
        if (!RegExp(
                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
            .hasMatch(value)) {
          return 'Please enter a valid e-mail address';
        }
      },
    );
  }

  Widget? _buildPassword() {
    return TextFormField(
      controller: passwordText,
      decoration: InputDecoration(
        hintText: 'Password',
        suffixIcon: Icon(
          Icons.visibility,
          color: Colors.black,
        ),
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
      ),
      obscureText: true,
      keyboardType: TextInputType.visiblePassword,
      validator: (String? value) {
        if (value!.isEmpty) {
          return 'Password is required';
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Form(
              key: _formkey,
              child: Column(
                children: [
                  Container(
                      width: 340,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.withOpacity(0.2),
                      ),
                      padding: EdgeInsets.only(left: 25),
                      child: _buildEmail()),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                      width: 340,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.withOpacity(0.2),
                      ),
                      padding: EdgeInsets.only(left: 25),
                      child: _buildPassword()),
                ],
              )),
          Padding(
            padding: EdgeInsets.only(right: 31, top: 15),
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                "Forgot Password",
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
          ),
          SizedBox(height: 120),
          GestureDetector(
            onTap: () {
              callLoginApi();
            },
            child: Container(
              alignment: Alignment.center,
              height: 50,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.lightGreenAccent[700],
              ),
              child: Text(
                "Login",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

bool validateAndSave() {
  final form = _formkey.currentState;
  if (form!.validate()) {
    return true;
  } else {
    return false;
  }
}
