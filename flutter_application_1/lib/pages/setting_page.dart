import 'package:flutter/material.dart';

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
              final Route route = MaterialPageRoute(
                builder: (_) => LoginPage(),
              );
              Navigator.pushAndRemoveUntil(
                context,
                route,
                (route) {
                  print("route.settings.name ${route.settings.name}");
                  return route.settings.name == '/';
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
