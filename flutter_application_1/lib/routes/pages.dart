import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_application_1/pages/second_page.dart';
import 'package:flutter_application_1/pages/setting_page.dart';
import 'package:flutter_application_1/routes/routes.dart';

abstract class Pages {
  static Map<String, Widget Function(BuildContext)> routes = {
    Routes.second: (BuildContext context) {
      final String name = ModalRoute.of(context).settings.arguments;
      return SecondPage(name: name);
    },
    Routes.home: (_) => HomePage(),
    Routes.login: (_) => LoginPage(),
    Routes.setting: (_) => SettingPage(),
  };
}
