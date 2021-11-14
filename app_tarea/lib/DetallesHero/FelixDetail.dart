import 'package:flutter/material.dart';


class FelixDetail extends StatelessWidget {
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
                tag: 'felix',
                child: Image.asset("assets/img/felix.jpg",width: 400.0,)),
              Padding(padding: EdgeInsets.all(30.0),
              child :Text(
                "ALIMEN GATO FELIX ADULTO ATUN SALSA 85G \n Precio: 1.06",
                style: TextStyle(fontSize: 20),
                
              ))
              
              
              
            ],
          ),
        ),
      ),
    );
  }
}