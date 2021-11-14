//import 'dart:js';

import 'package:app_tarea/menu.dart';
import 'package:app_tarea/registro.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  const FlutterApp({Key? key}) : super(key: key);

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
        title: Text("Market"),
      ),
     body: Container(
       decoration: BoxDecoration(
      
    image: DecorationImage (image: NetworkImage("https://i.pinimg.com/originals/78/33/46/783346bd25001247057e2c3d0de216fe.jpg"),
    fit: BoxFit.cover
    )
      
    ),
        child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          icono(),
          mensaje(),
          camposEmail(),
          camposPass(),
          ElevatedButton(
          child: const Text('INGRESAR'),
          onPressed: () {
              
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const menuapp()),
            );
          
          },
           
        ),
        ElevatedButton(
          child: const Text('REGISTRARSE'),
          onPressed: () {
              
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const registroApp()),
            );
          
          },
           
        )
        ],
      
        )
        )
        );
  }
}
Widget cuerpoApp(){
  return Container (
    decoration: BoxDecoration(
      
    image: DecorationImage (image: NetworkImage("https://i.pinimg.com/550x/7f/35/2e/7f352ec5104ea856cbc67bb1efcc1be0.jpg"),
    fit: BoxFit.cover
    )
      
    ),
    child: Center(
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          icono(),
          mensaje(),
          camposEmail(),
          camposPass(),
          
          botonCancelar()
        ],
      )) ,
    
    
    );
}


Widget camposUser(){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
    child: TextField(
    decoration: InputDecoration(
      hintText: "User",fillColor: Colors.white, filled: true
    )
    )
    ,
  );
}



Widget icono(){
  return Icon(Icons.supervised_user_circle,color: Colors.black);
}
Widget mensaje(){

  return  Text("INICIAR SESION",style: TextStyle(color: Colors.black,fontSize:28,fontWeight: FontWeight.w500,),
  );
}

Widget camposPass(){
  return Container(
    
    padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10,),
    
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
      hintText: "Password",fillColor: Colors.white, filled: true,prefixIcon: Icon(Icons.password)
    )
    )
    ,
  );
}
Widget camposEmail(){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
    child: TextField(
      decoration: InputDecoration(
      hintText: "Email",fillColor: Colors.white, filled: true,prefixIcon: Icon(Icons.attach_email)
    )
    )
    ,
  );
}


Widget botonCancelar(){

    return FlatButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
        side: BorderSide(color: Colors.greenAccent)),
      color: Colors.greenAccent,
      textColor: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 130,vertical: 10),
      onPressed: () {
        
      },
      child: Text(
        "Cancelar".toUpperCase(),
        style: TextStyle(
          fontSize: 14.0,
        ),
      ),
    );
}