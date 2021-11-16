import 'package:app_tarea/DetallesHero/DanyDetail.dart';
import 'package:app_tarea/DetallesHero/MonsterDetail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app_tarea/detail.dart';

class BebidasApp extends StatelessWidget {
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
          title: Text('Bebidas'),
        ),
        
        body: Table(
    
          children: <TableRow>[
            TableRow(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  DetailPage()),
            );
                  },
                  child: Hero(
                    tag: 'Gatorade',
                    child:Image.asset("assets/img/gatorade2.jpg",width: 20.0,))
                    ),
                    GestureDetector(
                  onTap: () {
                    Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  DanyDetail()),
            );
                  },
                  child: Hero(
                    tag: 'Dany',
                    child:Image.asset("assets/img/dany.jpg",width: 20.0,))
                    ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  MonsterDetail()),
            );
                  },
                  child: Hero(
                    tag: 'Monster',
                    child:Image.asset("assets/img/monster.jpg",width: 150.0, height: 150.0,))
                    ),
                
              ]
            ),
            
          ],
        ),
      ),
    );
  }
}