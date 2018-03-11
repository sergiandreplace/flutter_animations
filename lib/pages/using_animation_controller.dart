import 'package:flutter/material.dart';


class UsingAnimationControllerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Using animation controller"),
      ),
      body: new UsingAnimationControllerBody(),
    );
  }
}


class UsingAnimationControllerBody extends StatefulWidget {
  @override
  _UsingAnimationControllerBodyState createState() =>
    new _UsingAnimationControllerBodyState();
}

class _UsingAnimationControllerBodyState
  extends State<UsingAnimationControllerBody>
  with SingleTickerProviderStateMixin {

  AnimationController _controller;

  @override
  void initState() {
    super.initState();


    _controller = new AnimationController(
      lowerBound: -1.0,
      upperBound: 1.0,
      duration: new Duration(seconds: 2),
      vsync: this
    )
      ..addListener(() {
        this.setState(() {});
      });


    _controller.forward(from: -1.0);
  }

  @override
  Widget build(BuildContext context) {

    return new Stack(
      fit: StackFit.expand,
      children: <Widget>[
        new FractionallySizedBox(
          heightFactor: 0.2,
          widthFactor: 0.2,
          alignment: new Alignment(_controller.value, 0.0),
          child: new Icon(
            Icons.flight,
            size: 80.0,
          )
        ),
      ],
    );
  }
}
