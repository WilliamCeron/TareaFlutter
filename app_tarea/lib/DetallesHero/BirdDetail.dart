import 'package:flutter/material.dart';


class BirdDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
    icon: Icon(Icons.arrow_back, color: Colors.white),
    onPressed: () => Navigator.of(context).pop(),
  ), 
          title: Text('Detalle'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Hero(
                tag: 'bird',
                child: Image.asset("assets/img/bird.jpg",width: 300.0,)),
              Padding(padding: EdgeInsets.all(30.0),
              child :Text(
                "ALIMENTO P/CANARIO VITAMI 800GRS BIRDFO\n Precio: 2.79",
                style: TextStyle(fontSize: 20),
                
              ))
              
              
              
            ],
          ),
        ),
      ),
    );
  }
}