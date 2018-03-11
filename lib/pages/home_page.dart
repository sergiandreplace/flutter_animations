import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Flutter animations"),
      ),
      body: new ExamplesListWidget(),
    );
  }
}

class ExamplesListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new ListView(
        padding: new EdgeInsets.symmetric(vertical: 8.0),
        children: <Widget>[
          new ListRow(
            id: "1",
            title: "AnimationController output",
            subtitle: "The simplest use for AnimationController. It's key to understand this to understand how animations workr",
            targetRoute: "/animation_controller_output"
          ),
          new Divider(),
          new ListRow(
            id: "2",
            title: "Using AnimationController",
            subtitle: "Examples on how to use the AnimationController",
            targetRoute: "/using_animation_controller"
          ),
          new Divider(),
        ],
      ),
    );
  }
}

class ListRow extends StatelessWidget {

  final id;
  final title;
  final subtitle;
  final targetRoute;


  ListRow({this.id, this.title, this.subtitle, this.targetRoute});

  @override
  Widget build(BuildContext context) {

    return new ListTile(
        leading: new CircleAvatar(
          child: new Text(id, style: new TextStyle(fontSize: 20.0),),
        ),
        title: new Text(title),
        subtitle: new Text(subtitle),
        onTap: () {Navigator.of(context).pushNamed(targetRoute);}
    );
  }
}

