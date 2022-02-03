import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/second_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("First Page"),
              SizedBox(height: 20),
              FlatButton(
                onPressed: () {
                  final Route route = MaterialPageRoute(
                    builder: (_) => SecondPage(),
                  );
                  Navigator.push(context, route);
                },
                color: Colors.redAccent,
                child: Text("Go to second page"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
