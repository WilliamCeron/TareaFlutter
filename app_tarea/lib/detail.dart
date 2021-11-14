import 'package:flutter/material.dart';


class DetailPage extends StatelessWidget {
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
                tag: 'Gatorade',
                child: Image.asset("assets/img/gatorade2.jpg",width: 450.0,)),
              Padding(padding: EdgeInsets.all(30.0),
              child :Text(
                "Bebida Gatorade \n Precio: 1.00",
                style: TextStyle(fontSize: 20),
                
              ))
              
              
              
            ],
          ),
        ),
      ),
    );
  }
}