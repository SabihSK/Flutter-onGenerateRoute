import 'package:flutter/material.dart';
import 'package:on_generate_route_example/view/firstpage.dart';
import 'package:on_generate_route_example/view/secondpage.dart';

class Home extends StatelessWidget {
  static const route = "/";
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("onGenerateRoute"),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "onGenerateRoute",
              ),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, FirstPage.route, arguments: [
                    "Karachi",
                    "Pakistan",
                  ]);
                },
                child: const Text(
                  "Goto First page with multiple data",
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, SecondPage.route, arguments: [
                    "Karachi",
                    "Pakistan",
                  ]);
                },
                child: const Text(
                  "Goto Second page with wrong data",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
