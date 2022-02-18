import 'package:flutter/material.dart';
import 'package:icon_stack/icon_stack.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Icon stack example'),
        ),
        body: Center(
          child: IconStackWidget(
            IconStack(
              [
                PositionedIcon(
                    icon: Icons.crop_original,
                    size: 1.000,
                    x: 0.000,
                    y: 0.000,
                    color: const Color(0xff2196f3)),
                PositionedIcon(
                    icon: Icons.wb_sunny,
                    size: 0.200,
                    x: 0.325,
                    y: 0.325,
                    color: const Color(0xffffc107)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
