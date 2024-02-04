import 'package:flutter/material.dart';

class nextPage extends StatelessWidget {
  //イニシャライザ(コンストラクタ)を記述する
  nextPage(this.name);
  late String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Hello Flutter"),
        ),
        body: Container(
          color: Colors.red,
          child: Text(name),
        ));
  }
}
