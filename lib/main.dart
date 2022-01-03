import 'package:flutter/material.dart';
import 'package:layout/stringy.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AppTitle',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var stringy = Stringy();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Column(children: [
        Flexible(
            fit: FlexFit.tight,
            flex: 1,
            child: Container(
              child: Image.network(
                stringy.sceneryUrl,
                fit: BoxFit.cover,
              ),
            )),
        Flexible(
            fit: FlexFit.tight,
            flex: 1,
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(mainAxisSize: MainAxisSize.max, children: [
                  Flexible(
                      fit: FlexFit.tight,
                      flex: 1,
                      child: ListView(
                        children: [Text(stringy.ipsum)],
                      )),
                  Flexible(
                      fit: FlexFit.tight,
                      flex: 1,
                      child: ListView(
                        children: [
                          Text(stringy.ipsum,
                          style: const TextStyle(
                            fontSize: 18,
                            backgroundColor: Colors.yellowAccent
                          ))
                        ],
                      )),
                ]),
              ),
            )),
      ]),
          Center(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [BoxShadow(blurRadius: 20, color: Colors.black, spreadRadius: 1)],
              ),
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                backgroundImage: NetworkImage(stringy.profileImage),
                radius: 60,

              ),
            ),
          ),
    ]));
  }
}
