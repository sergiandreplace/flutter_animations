import 'package:flutter/material.dart';
import 'package:flutter_animations/pages/animation_controller_output.dart';
import 'package:flutter_animations/pages/home_page.dart';
import 'package:flutter_animations/pages/using_animation_controller.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Animations',
      theme: new ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: new HomePage(),
      routes: <String, WidgetBuilder>{
        "/animation_controller_output": (BuildContext context) => new AnimationControllerOutputPage(),
        "/using_animation_controller": (BuildContext context) => new UsingAnimationControllerPage(),
      }
    );
  }
}
