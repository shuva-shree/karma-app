import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:karma/widgets/login_form.dart';

class LoginPage extends StatelessWidget {
  static const routeName = '/login-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipPath(
              clipper: OvalBottomBorderClipper(),
              child: Container(
                padding: EdgeInsets.only(top: 30),
                height: 200,
                width: MediaQuery.of(context).size.width,
                color: Colors.orange,
                child: Column(
                  children: [
                    Container(
                      height: 120,
                      width: 300,
                      child: Image.asset(
                        "assets/images/newlogo.png",
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      "LOGIN",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ],
                ),
              ),
            ),
            ClipPath(
              clipper: OvalTopBorderClipper(),
              child: Container(
                height: MediaQuery.of(context).size.height - 225,
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 70,
                    ),
                    LoginForm(),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Not a member yet? ",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "Click Here",
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      // ),
    );
  }
}
