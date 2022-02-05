import 'package:flutter/material.dart';
import 'package:flutter_application_1/routes/routes.dart';

import 'login_page.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: FlatButton(
            child: Text("Sign Out"),
            onPressed: () {
              //final Route route = MaterialPageRoute(
              //  builder: (_) => LoginPage(),
              // );
              // Navigator.pushAndRemoveUntil(
              //  context,
              //  route,
              // (_) => false,
              //  );
              Navigator.pushNamedAndRemoveUntil(
                context,
                Routes.login,
                (route) => false,
              );
            },
          ),
        ),
      ),
    );
  }
}
