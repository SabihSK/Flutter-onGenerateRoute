import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  static const route = "SecondPage";
  final data;
  const SecondPage({Key? key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Text(data),
        ),
      ),
    );
  }
}
