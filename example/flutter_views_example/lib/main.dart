import 'package:flutter/material.dart';
import 'package:flutter_views/View.dart';
import 'package:flutter_views/flutter_views.dart';
import 'package:flutter_views_example/assets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<View> views = [];
  @override
  void initState() {
    views = [
      View(image: image1, id: 1),
      View(image: image2, id: 2),
      View(image: image3, id: 3),
      View(image: image4, id: 4),
      View(image: image5, id: 5),
      View(image: image6, id: 6),
      View(image: image7, id: 7),
      View(image: image8, id: 8),
      View(image: image9, id: 9),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            color: Colors.transparent,
            child: FlutterViews(
              spacing: 2,
              shape: BoxShape.circle,
              border: BorderRadius.circular(20),
              views: views,
            )),
      ),
    );
  }
}
