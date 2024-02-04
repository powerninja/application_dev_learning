import 'package:flutter/material.dart';

class nextPage extends StatelessWidget {
  //イニシャライザ(コンストラクタ)を記述する
  nextPage(this.name, this.hobby, {super.key});
  late String name;
  late String hobby;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello Flutter"),
      ),
      body: Container(
          color: Colors.red, child: Row(children: [Text(name), Text(hobby)])),
    );
  }
}
