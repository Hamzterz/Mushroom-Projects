/*
-See A Tree Citizen Science Project App
- Aarond Dino

Page: Habitat Status
Purpose: 
- Displays aspects for a habitat status.
- Acquires yes/no input from user.
- Redirects to pages: Habitat Info, Species Match.
*/

import 'package:flutter/material.dart';
import 'package:seeatree_4_aed/widgets.dart';
import 'package:seeatree_4_aed/objects/item.dart' as globals;

//#2.1111111111: Habitat Status Page
class HabitatStatusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
            title: new Text("Habitat"), 
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.info_outline),
                onPressed: (){
                  Navigator.of(context).pushNamed("/poprules");
                },
              ),
              IconButton(
                icon: Icon(Icons.home),
                onPressed: (){
                  Navigator.of(context).pushNamed("/HomePage");
                },
              ),
            ],
            backgroundColor: Colors.green,
            ),
        body: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            new TextCard(
                text: "Does this tree house animals and plants?",
                size: 15.0,
                box: Colors.grey[200]),
            new Image(
                  image: new AssetImage("assets/Habitat.png"),
                  width: 250.0,
                  height: 250.0),
            new Column(
              children: <Widget>[
                //new Text("Provides a home for animals such as birds"),
                new TextCard(
                    text: "Provides a home for animals such as birds",
                    size: 15.0,
                    box: Colors.grey[200]),
                new Text("OR"),
                //new Text("Provides living conditions for other plants"),
                new TextCard(
                    text: "Provides living conditions for other plants",
                    size: 15.0,
                    box: Colors.grey[200]),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 30.0,horizontal: 10.0),
              child: new Row(
                //crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new RaisedButton(
                    color: Colors.lightGreenAccent,
                    child: new Column(
                      children: <Widget>[
                        new Text("Yes"),
                      ],
                    ),
                    onPressed: () {
                      globals.item.habitat  = "Yes";
                      Navigator.of(context).pushNamed("/Species");
                    },
                  ),
                  Container(
                    width: 150.0,
                  child: new RaisedButton(
                    color: Colors.orange,
                    child: new Column(
                      children: <Widget>[
                        new Text("I'm not sure"),
                      ],
                    ),
                    onPressed: () {
                      globals.item.habitat  = "n/a";
                      Navigator.of(context).pushNamed("/Species");
                    },
                  ),),
                  new RaisedButton(
                    color: Colors.redAccent,
                    child: new Column(
                      children: <Widget>[
                        new Text("No"),
                      ],
                    ),
                    onPressed: () {
                      globals.item.habitat  = "No";
                      Navigator.of(context).pushNamed("/Species");
                    },
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
