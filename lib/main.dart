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
  String text = "";
  String hyoji_text = "";

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  final myFocusNode = FocusNode();

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
            child: Column(
              children: [
                TextField(onChanged: (value) {
                  text = value;
                }),
                TextField(
                  focusNode: myFocusNode,
                ),
                ElevatedButton(
                    onPressed: () => {
                          myFocusNode.requestFocus(),
                          setState(() {
                            hyoji_text = text;
                          })
                        },
                    child: Text('フォーカス')),
                ElevatedButton(
                    onPressed: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => nextPage(text)),
                          )
                        },
                    child: Text('遷移'))
              ],
            )));
  }
}
