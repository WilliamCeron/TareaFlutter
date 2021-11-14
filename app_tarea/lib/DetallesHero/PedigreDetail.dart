import 'package:flutter/material.dart';


class PedigreDetail extends StatelessWidget {
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
                tag: 'pedigre',
                child: Image.asset("assets/img/pedigre.jpg",width: 300.0,)),
              Padding(padding: EdgeInsets.all(30.0),
              child :Text(
                "ALIM P/PERRO PEDIGREE CACHORRO POLL 100G\n Precio: 0.99",
                style: TextStyle(fontSize: 20),
                
              ))
              
              
              
            ],
          ),
        ),
      ),
    );
  }
}