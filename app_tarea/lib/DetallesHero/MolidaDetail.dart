import 'package:flutter/material.dart';


class MolidaDetail extends StatelessWidget {
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
                tag: 'molida',
                child: Image.asset("assets/img/molida.jpg",width: 400.0,)),
              Padding(padding: EdgeInsets.all(30.0),
              child :Text(
                "Carne Molida GOLD  \n Precio: 3.99",
                style: TextStyle(fontSize: 20),
                
              ))
              ,
              FlatButton(
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: BorderSide(color: Colors.green)),
                color: Colors.blueAccent,
                textColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 130,vertical: 10),
                onPressed: () {
                },
                child: Text(
                  "Agregar al carrito".toUpperCase(),
                  style: TextStyle(
                  fontSize: 14.0,
                ),
                ),
              ),
              
              
            ],
          ),
        ),
      ),
    );
  }
}