import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/second_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

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
                onPressed: () async {
                  final Route route = MaterialPageRoute<String>(
                    builder: (_) => SecondPage(name: "Ant Vill"),
                  );
                  final String data =
                      await Navigator.push<String>(context, route);
                  print("emoji");
                },
                color: Colors.amber,
                child: Text("Go to second page"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
