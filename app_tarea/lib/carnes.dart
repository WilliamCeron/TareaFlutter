import 'package:app_tarea/DetallesHero/AceiteDetail.dart';
import 'package:app_tarea/DetallesHero/AlasDetail.dart';
import 'package:app_tarea/DetallesHero/ChorizoDetail.dart';
import 'package:app_tarea/DetallesHero/DanyDetail.dart';
import 'package:app_tarea/DetallesHero/MolidaDetail.dart';
import 'package:app_tarea/DetallesHero/MonsterDetail.dart';
import 'package:app_tarea/DetallesHero/PachaDetail.dart';
import 'package:app_tarea/DetallesHero/ToallaDetail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app_tarea/detail.dart';

class CarnesApp extends StatelessWidget {
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
          title: Text('Carnes'),
        ),
        body: Table(
          children: <TableRow>[
            TableRow(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  AlasDetail()),
            );
                  },
                  child: Hero(
                    tag: 'alas',
                    child:Image.asset("assets/img/alas.jpg",width: 20.0,))
                    ),
                    GestureDetector(
                  onTap: () {
                    Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  MolidaDetail()),
            );
                  },
                  child: Hero(
                    tag: 'molida',
                    child:Image.asset("assets/img/molida.jpg",width: 20.0,))
                    ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  ChorizoDetail()),
            );
                  },
                  child: Hero(
                    tag: 'chorizo',
                    child:Image.asset("assets/img/chorizo.jpg",width: 150.0, height: 150.0,))
                    ),
                
              ]
            ),
            
          ],
        ),
      ),
    );
  }
}