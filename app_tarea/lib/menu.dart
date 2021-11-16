import 'package:app_tarea/DetallesHero/PachaDetail.dart';
import 'package:app_tarea/bebes.dart';
import 'package:app_tarea/bebidas.dart';
import 'package:app_tarea/carnes.dart';
import 'package:app_tarea/mascota.dart';
import 'package:flutter/material.dart';

import 'main.dart';



class menuapp extends StatelessWidget {
  const menuapp
({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Medilife",
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  Inicio({Key? key}) : super(key: key);

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu"),
      ),
      drawer:  Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("WILLIAM CERON", style:  TextStyle(fontWeight: FontWeight.bold,fontSize: 17.0),), 
              accountEmail: Text("2532222017@mail.utec.edu.sv"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage("https://i.pinimg.com/236x/37/11/c8/3711c866893fae8eefa3e3ffe1c46155.jpg"),
              ),
              ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Perfil"),
              
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart_outlined),
              title: Text("Carrito"),
              
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Cerrar Sesion"),
              onTap: (){
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  FlutterApp()),
            );
              },
            )

          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
      
    image: DecorationImage (image: NetworkImage("https://raw.githubusercontent.com/JastAir/Android-BackgroundChart/master/%D0%A1%D0%BD%D0%B8%D0%BC%D0%BE%D0%BA%20%D1%8D%D0%BA%D1%80%D0%B0%D0%BD%D0%B0%202019-03-08%20%D0%B2%2019.32.03.png"),
    fit: BoxFit.cover
    )
      
    ),
        padding: EdgeInsets.all(30.0),
        child: GridView.count(crossAxisCount:2,
        children: <Widget>[
          Card(
            child: InkWell(
              onTap: (){
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  BebidasApp()),
            );
              },
              splashColor: Colors.green,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Image.asset("assets/img/bebidas.png",width: 100.0,),
                    //Icon(Icons.local_drink ,size:70.0),
                    //Text("Bebidas", style: new TextStyle(fontSize: 17.0))
                  ],
                ),

              ),
            ),
          ),
          Card(
            child: InkWell(
              onTap: (){
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  BebesApp()),
            );
              },
              splashColor: Colors.green,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Image.asset("assets/img/bebes.png",width: 100.0,),
                    //Icon(Icons.local_drink ,size:70.0),
                    //Text("Bebes", style: new TextStyle(fontSize: 17.0))
                  ],
                ),

              ),
            ),
          ),
          Card(
            child: InkWell(
              onTap: (){
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  CarnesApp()),
            );
              },
              splashColor: Colors.green,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Image.asset("assets/img/carnes.png",width: 100.0,),
                    //Icon(Icons.local_drink ,size:70.0),
                    //Text("Carnes", style: new TextStyle(fontSize: 17.0))
                  ],
                ),

              ),
            ),
          ),
          Card(
            child: InkWell(
              onTap: (){
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  MascotaApp()),
            );
              },
              splashColor: Colors.green,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Image.asset("assets/img/mascotas.png",width: 100.0,),
                    //Icon(Icons.local_drink ,size:70.0),
                    //Text("Mascotas", style: new TextStyle(fontSize: 17.0))
                  ],
                ),

              ),
            ),
          )
        ],),

      ),
    ); 
  }
}


