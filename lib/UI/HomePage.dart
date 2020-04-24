import 'package:flutter/material.dart';
//import 'package:app_arretadas/UI/Contacts.dart';

class Contact {
  int id;
  String nome;
  String endress;
  String number;
  String image;

  Contact();
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Contact> contact = List();

  @override
  void initState() {
    super.initState();

    Contact c = Contact();
    c.nome = "Delegacia da Mulher";
    c.endress = " Av. Frei Caneca, 460";
    c.number = "(81) 3761-8507";
    c.image = "images/pmpe.png";
    contact.add(c);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          padding: EdgeInsets.all(0.0),
          itemCount: contact.length,
          itemBuilder: (context, index) {
            return _contactCard(context, index);
          }),
    );
  }

  Widget _contactCard(BuildContext context, int index) {
    return Stack(children: <Widget>[
      Image.asset(
        "images/Background.jpg",
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.cover,
      ),
      Column(children: <Widget>[
        Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Padding(
              padding: EdgeInsets.only(top: 30.0),
              child: Image.asset(
                "images/Icon.png",
                width: 80,
              ),
            ),
        ]),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text("AGENDA",
          style: TextStyle(color: Colors.pink[50], fontSize: 30, ))),
      ]),
      Column(
        children: <Widget>[
      GestureDetector(
        child: Padding(
            padding: EdgeInsets.only(top: 150),
            child: Card(
              color: Colors.pink[100],
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.pink[300], width: 1),
                borderRadius: BorderRadius.circular(15),
              ),
              margin: EdgeInsets.all(10.0),
              child: Row(
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.all(10),
                      child: Container(
                        padding: EdgeInsets.all(80.0),
                        width: 80.0,
                        height: 80.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage("images/pmpe.png")),
                        ),
                      )),
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            contact[0].nome,
                            style: TextStyle(
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.pink),
                          ),
                          Text(
                            contact[0].endress,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: TextStyle(
                                fontSize: 16.0, color: Colors.pink[900]),
                          ),
                          Text(
                            contact[0].number,
                            style: TextStyle(
                                fontSize: 16.0, color: Colors.pink[900]),
                          ),
                        ]),
                  ),
                  Align(
                      alignment: Alignment.bottomRight,
                      child: Icon(
                        Icons.arrow_right,
                        color: Colors.pink[300],
                      )),
                ],
              ),
            )),
      ),
      // SEGUNDO CARD
      GestureDetector(
        child: Card(
              color: Colors.pink[100],
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.pink[300], width: 1),
                borderRadius: BorderRadius.circular(15),
              ),
              margin: EdgeInsets.all(10.0),
              child: Row(
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.all(10),
                      child: Container(
                        padding: EdgeInsets.all(80.0),
                        width: 80.0,
                        height: 80.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage("images/pmpe.png")),
                        ),
                      )),
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("C.E.S.M.U.C.",
                            style: TextStyle(
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.pink),
                          ),
                          Text("Av. Simoa Gomes, 505",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: TextStyle(
                                fontSize: 16.0, color: Colors.pink[900]),
                          ),
                          Text("(87) 3762-0768",
                            style: TextStyle(
                                fontSize: 16.0, color: Colors.pink[900]),
                          ),
                        ]),
                  ),
                  Align(
                      alignment: Alignment.bottomRight,
                      child: Icon(
                        Icons.arrow_right,
                        color: Colors.pink[300],
                      )),
                ],
              ),
            ),
      ),
      //TERCEIRO CARD
      GestureDetector(
        child: Card(
              color: Colors.pink[100],
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.pink[300], width: 1),
                borderRadius: BorderRadius.circular(15),
              ),
              margin: EdgeInsets.all(10.0),
              child: Row(
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.all(10),
                      child: Container(
                        padding: EdgeInsets.all(80.0),
                        width: 80.0,
                        height: 80.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage("images/Samu.jpg")),
                        ),
                      )),
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("SAMU",
                            style: TextStyle(
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.pink),
                          ),
                          Text("Rua Alice Dourado",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: TextStyle(
                                fontSize: 16.0, color: Colors.pink[900]),
                          ),
                          Text("(87) 98112-8437",
                            style: TextStyle(
                                fontSize: 16.0, color: Colors.pink[900]),
                          ),
                        ]),
                  ),
                  Align(
                      alignment: Alignment.bottomRight,
                      child: Icon(
                        Icons.arrow_right,
                        color: Colors.pink[300],
                      )),
                ],
              ),
            ),
      ),
      //QUARTO CARD
      GestureDetector(
        child: Card(
              color: Colors.pink[100],
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.pink[300], width: 1),
                borderRadius: BorderRadius.circular(15),
              ),
              margin: EdgeInsets.all(10.0),
              child: Row(
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.all(10),
                      child: Container(
                        padding: EdgeInsets.all(80.0),
                        width: 80.0,
                        height: 80.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage("images/Samu.jpg")),
                        ),
                      )),
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Secretária da Mulher",
                            style: TextStyle(
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.pink),
                          ),
                          Text("Rua Alice Dourado",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: TextStyle(
                                fontSize: 16.0, color: Colors.pink[900]),
                          ),
                          Text("(87) 98112-8437",
                            style: TextStyle(
                                fontSize: 16.0, color: Colors.pink[900]),
                          ),
                        ]),
                  ),
                  Align(
                      alignment: Alignment.bottomRight,
                      child: Icon(
                        Icons.arrow_right,
                        color: Colors.pink[300],
                      )),
                ],
              ),
            ),
      ),
      ],)
      
    ]);
  }
}
