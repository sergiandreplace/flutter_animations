import 'package:flutter/material.dart';

class AnimationControllerOutputPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("AnimationController output"),
      ),
      body: new AnimationControllerOutputBody(),
    );
  }
}

class AnimationControllerOutputBody extends StatefulWidget {
  @override
  _AnimationControllerOutputBodyState createState() =>
      new _AnimationControllerOutputBodyState();
}

class _AnimationControllerOutputBodyState extends State<AnimationControllerOutputBody>
    with SingleTickerProviderStateMixin {

  AnimationController animation;

  @override
  void initState() {
    super.initState();
    animation = new AnimationController(
      vsync: this,
      duration: new Duration(seconds: 3),
    );
    animation.addListener(() {
      this.setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      child: new Center(
        child: new Text(
          animation.isAnimating
              ? animation.value.toStringAsFixed(3)
              : "Tap me!",
          style: new TextStyle(
            fontSize: 50.0,
          ),
        ),
      ),
      onTap: () {
        animation.forward(from: 0.0);
      },
    );
  }

  @override
  void dispose() {
    animation.dispose();
    super.dispose();
  }
}
