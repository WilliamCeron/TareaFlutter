import 'package:flutter/material.dart';


class AceiteDetail extends StatelessWidget {
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
                tag: 'aceite',
                child: Image.asset("assets/img/Aceitebb.jpg",width: 400.0,)),
              Padding(padding: EdgeInsets.all(30.0),
              child :Text(
                "Aceite Corporal  \n Precio: 02.08",
                style: TextStyle(fontSize: 20),
                
              ))
              
              
              
            ],
          ),
        ),
      ),
    );
  }
}