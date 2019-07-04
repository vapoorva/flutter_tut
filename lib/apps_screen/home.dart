import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart' as prefix0;
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        padding: EdgeInsets.only(top: 50.0),
        alignment: Alignment.center,
        color: Colors.red,
        child: Column(
          children: <Widget>[
            Expanded(
                child: Text(
              "hello",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 30.0,
                  color: Colors.white,
                  fontFamily: 'Barriecito'),
            )),
            Expanded(
                child: Text(
              "MotherFucker",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 30.0,
                  color: Colors.white,
                  fontFamily: 'Barriecito'),
            )),
            Expanded(
                child: Text(
              "SOn of a bitch",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 30.0,
                  color: Colors.white,
                  fontFamily: 'Barriecito'),
            )),
            ImageAsset(),
            Button()
          ],
        )

//
        );
  }
}

class ImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage ai = AssetImage('images/mus.png');
    Image im = Image(image: ai);
    return Container(child: im);
  }
}

class Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: RaisedButton(
        color: Colors.purple,
        child: Text("hellooo"),
        elevation: 6.0,
        onPressed: () {
          BookFlight(context);
        },
      ),
    );
  }

  // ignore: non_constant_identifier_names
  void BookFlight(BuildContext context) {
    var alertDialog = AlertDialog(
      title: Text("Booked"),
      content: Text("Happy Jouney"),
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alertDialog;
        });
  }
}
