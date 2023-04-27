import 'package:flutter/material.dart';
import 'package:flutter_inkwell_touch_effect/widgets/inkwell_over_img.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  final List<Widget> widgets = const [
    InkWellOverImg(),
  ];
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView.builder(
          itemExtent: 150,
          itemBuilder: (context, index) => widgets[index],
          itemCount: widgets.length,
        ),
      ),
    );
  }
}
