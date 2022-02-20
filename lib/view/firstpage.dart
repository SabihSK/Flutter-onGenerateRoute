import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  static const route = "FirstPage";

  final routeData;
  const FirstPage({Key? key, this.routeData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(routeData[0]),
            const SizedBox(
              height: 100,
            ),
            Text(routeData[1]),
          ],
        ),
      ),
    );
  }
}
