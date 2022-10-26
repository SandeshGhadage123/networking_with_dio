import 'package:flutter/material.dart';
import 'package:networking_with_dio/screens/coin_list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Networking with dio',
      theme: ThemeData(

        primarySwatch: Colors.purple,
      ),
      home: const MyHomePage(title: 'Networking with dio'),
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

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Crypto Assets', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),),
                const Text('See all'),
              ],
            ),
            const SizedBox(height: 10),
            coin_list_screen(),
          ],

        ),
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
