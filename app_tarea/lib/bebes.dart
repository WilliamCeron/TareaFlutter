import 'package:app_tarea/DetallesHero/AceiteDetail.dart';
import 'package:app_tarea/DetallesHero/DanyDetail.dart';
import 'package:app_tarea/DetallesHero/MonsterDetail.dart';
import 'package:app_tarea/DetallesHero/PachaDetail.dart';
import 'package:app_tarea/DetallesHero/ToallaDetail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app_tarea/detail.dart';

class BebesApp extends StatelessWidget {
  //void pushRoute(BuildContext context){
    
   // Navigator.push(context, CupertinoPageRoute(
    //  builder: (BuildContext context)=> DetailPage()

     // ));
  //}
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
          title: Text('Bebes'),
        ),
        body: Table(
          children: <TableRow>[
            TableRow(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  PachaDetail()),
            );
                  },
                  child: Hero(
                    tag: 'pacha',
                    child:Image.asset("assets/img/pacha.jpg",width: 20.0,))
                    ),
                    GestureDetector(
                  onTap: () {
                    Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  ToallaDetail()),
            );
                  },
                  child: Hero(
                    tag: 'Toalla',
                    child:Image.asset("assets/img/toallas.jpg",width: 20.0,))
                    ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  AceiteDetail()),
            );
                  },
                  child: Hero(
                    tag: 'aceite',
                    child:Image.asset("assets/img/Aceitebb.jpg",width: 150.0, height: 150.0,))
                    ),
                
              ]
            ),
            
          ],
        ),
      ),
    );
  }
}