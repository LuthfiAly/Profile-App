import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "UI Profile",
      home: new UIScreen(),
    );
  }
}

class UIScreen extends StatelessWidget {
  Color gradientStart = Colors.orange[200];
  Color graientEnd = Colors.purple;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                height: 200,
                decoration: BoxDecoration(
                    gradient: new LinearGradient(
                      colors: [gradientStart, graientEnd],
                    ),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(50),
                      bottomLeft: Radius.circular(50),
                    )),
                child: Center(
                  child: Text(
                    "Profile",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(top: 50),
                  child: Column(children: <Widget>[
                    new Center(
                      child: Text(
                        "upi.aly",
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                    new Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Card(
                          elevation: 20,
                          child: Container(
                            width: 80,
                            child: Center(child: Text('Folower\n  359')),
                          ),
                        ),
                        Card(
                          elevation: 20,
                          child: Container(
                            width: 80,
                            child: Center(child: Text('Following\n  214')),
                          ),
                        ),
                        Card(
                          elevation: 20,
                          child: Container(
                            width: 80,
                            child: Center(child: Text('Likes\n  200')),
                          ),
                        )
                      ],
                    ),
                    Divider(height: 1, color: Colors.grey),
                    Container(
                        height: 100,
                        width: 350,
                        margin: EdgeInsets.only(top: 10),
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            Card(
                                elevation: 20,
                                child: Container(
                                    padding: EdgeInsets.all(20),
                                    width: 80,
                                    child: Column(
                                      children: <Widget>[
                                        Icon(Icons.person,
                                            color: Colors.purple),
                                        Text('About')
                                      ],
                                    ))),
                            Card(
                                elevation: 20,
                                child: Container(
                                    padding: EdgeInsets.all(20),
                                    width: 80,
                                    child: Column(
                                      children: <Widget>[
                                        Icon(Icons.work, color: Colors.purple),
                                        Text('Office')
                                      ],
                                    ))),
                            Card(
                                elevation: 20,
                                child: Container(
                                    padding: EdgeInsets.all(20),
                                    width: 80,
                                    child: Column(
                                      children: <Widget>[
                                        Icon(Icons.computer,
                                            color: Colors.purple),
                                        Text('Skill')
                                      ],
                                    ))),
                            Card(
                                elevation: 20,
                                child: Container(
                                    padding: EdgeInsets.all(20),
                                    width: 80,
                                    child: Column(
                                      children: <Widget>[
                                        Icon(Icons.language,
                                            color: Colors.purple),
                                        Text('Language',
                                            style: TextStyle(fontSize: 9))
                                      ],
                                    ))),
                            Card(
                                elevation: 20,
                                child: Container(
                                    padding: EdgeInsets.all(20),
                                    width: 80,
                                    child: Column(
                                      children: <Widget>[
                                        Icon(Icons.star, color: Colors.purple),
                                        Text(
                                          'Interest',
                                          style: TextStyle(fontSize: 10),
                                        )
                                      ],
                                    )))
                          ],
                        )),
                    Divider(height: 5),
                    Container(
                      margin: EdgeInsets.only(top: 30, left: 5),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                'Hobi',
                                style: TextStyle(
                                    color: Colors.purple,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('- Maen game'),
                                  Text('- Koding'),
                                  Text('- Baca buku'),
                                  Text('- Menulis'),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ]),
                ),
              )
            ],
          ),
          Positioned(
              top: 150,
              child: Container(
                height: 100,
                width: 100,
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/image/upi.jpg'),
                ),
              ))
        ],
      ),
    );
  }
}
