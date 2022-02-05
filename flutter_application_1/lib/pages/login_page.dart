import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/routes/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlatButton(
          child: Text("go to Home"),
          onPressed: () {
            // final Route route = MaterialPageRoute(
            //    builder: (_) => HomePage(),
            //   );
            //   Navigator.pushReplacement(context, route);
            Navigator.pushReplacementNamed(context, Routes.home);
          },
        ),
      ),
    );
  }
}
