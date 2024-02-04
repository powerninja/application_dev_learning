import 'package:application_dev_learning/next_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Hello Flutter"),
          actions: [Icon(Icons.add), Icon(Icons.share)],
        ),
        body: Container(
          width: double.infinity,
          child: TextField(
              decoration: InputDecoration(
                //テキストの枠線なし
                border: InputBorder.none,
                //何を入力するかの補助テキスト
                hintText: 'Enter a search term',
              ),
              //画面を開いた瞬間テキストフィールドにフォーカスされるようになる
              autofocus: true),
        ));
  }
}
