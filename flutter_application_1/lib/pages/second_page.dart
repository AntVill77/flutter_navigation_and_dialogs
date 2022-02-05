import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/setting_page.dart';
import 'package:flutter_application_1/routes/routes.dart';

class SecondPage extends StatelessWidget {
  final String name;
  const SecondPage({Key key, @required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            final canPop = Navigator.canPop(context);
            print("canPop $canPop");
            if (canPop) {
              Navigator.pop(context, "MEEDU.APP");
            }
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              // final Route route = MaterialPageRoute(
              //    builder: (_) => SettingPage(),
              //    );
              //    Navigator.push(context, route);
              Navigator.pushNamed(context, Routes.setting);
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(this.name + " Ot"),
            ],
          ),
        ),
      ),
    );
  }
}
