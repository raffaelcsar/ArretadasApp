//import 'package:app_arretadas/UI/HomePage.dart';
import 'package:flutter/material.dart';
//import 'package:arretadas_agenda/UI/gmap.dart';

class Contactpage extends StatefulWidget {
  @override
  _ContactpageState createState() => _ContactpageState();
}

class _ContactpageState extends State<Contactpage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Image.asset(
        "images/Background.jpg",
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.cover,),
        Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 30.0),
                child: Image.asset(
                  "images/Icon.png",
                  width: 80,
            ))])]),
      MaterialApp(

          // appBar: AppBar(
          //   backgroundColor: Colors.pink,
          //   title: Text("AGENDA"),
          //   centerTitle: true,
          // ),
          home: SingleChildScrollView(
              padding: EdgeInsets.only(top: 150),
              child: Column(
                children: <Widget>[
                  // Container(
                  //   padding: EdgeInsets.all(10.0),
                  //   width: 140.0,
                  //   height: 140.0,
                  //   decoration: BoxDecoration(
                  //     shape: BoxShape.circle,
                  //     image:
                  //         DecorationImage(image: AssetImage("images/pmpe.png")),
                  //   ),
                  // ),
                  Column(
                    children: <Widget>[
                      Container(
                          child: Padding(
                              padding: EdgeInsets.all(20),
                              child: Card(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: <Widget>[
                                        Row(children: <Widget>[
                                          Padding(
                                              padding: EdgeInsets.all(10),
                                              child: Icon(
                                                Icons.person_pin,
                                                color: Colors.pink,
                                                size: 40,
                                              )),
                                          Text("Delegacia da Mulher",
                                              style: TextStyle(
                                                  color: Colors.pink,
                                                  fontSize: 20.0,
                                                  fontStyle: FontStyle.italic))
                                        ]),
                                        Row(children: <Widget>[
                                          Padding(
                                              padding: EdgeInsets.all(10),
                                              child: Icon(Icons.place,
                                                  color: Colors.pink,
                                                  size: 40)),
                                          Text(
                                              "Av. Frei Caneca, 460\nHeliópolis, Garanhuns - PE,\n55295-515",
                                              overflow: TextOverflow.clip,
                                              style: TextStyle(
                                                  color: Colors.pink,
                                                  fontSize: 18.0,
                                                  fontStyle: FontStyle.italic))
                                        ]),
                                        Row(children: <Widget>[
                                          Padding(
                                              padding: EdgeInsets.all(10),
                                              child: Icon(Icons.phone,
                                                  color: Colors.pink,
                                                  size: 40)),
                                          Text("(81) 3761-8507",
                                              overflow: TextOverflow.clip,
                                              style: TextStyle(
                                                  color: Colors.pink,
                                                  fontSize: 18.0,
                                                  fontStyle: FontStyle.italic))
                                        ]),
                                        Column(
                                          children: <Widget>[
                                            Container(
                                              child: Text("data")
                                              //widget.GMap();,
                                            )
                                          ],
                                        )
                                      ],
                                    )),
                              ))),
                    ],
                  )
                ],
              )))
    ]);
  }
}
