import 'package:flutter/material.dart';


class PachaDetail extends StatelessWidget {
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
                tag: 'pacha',
                child: Image.asset("assets/img/pacha.jpg",width: 100.0,)),
              Padding(padding: EdgeInsets.all(30.0),
              child :Text(
                "Pacha Biberon  \n Precio: 1.75",
                style: TextStyle(fontSize: 20),
                
              ))
              
              
              
            ],
          ),
        ),
      ),
    );
  }
}