import 'package:flutter/material.dart';


class registroApp extends StatelessWidget {
  const registroApp({Key? key}) : super(key: key);

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
        
        title: Text("Registro"),
      ),
      body: cuerpoApp(),
        
      
       
    );
  }
}
Widget cuerpoApp(){
  return Container (
    decoration: BoxDecoration(
      
    image: DecorationImage (image: NetworkImage("https://res.allmacwallpaper.com/get/iMac-21-inch-wallpapers/Abstract-blue-leaf-1920x1080/1995-9.jpg"),
    fit: BoxFit.cover
    )
      
    ),
    child: Center(
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          icono(),
          mensaje(),
          camposUser(),
          camposEmail(),
          camposPass(),
          camposRePass(),
          botonGuardar(),
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
      hintText: "Nombre Completo",fillColor: Colors.white, filled: true,prefixIcon: Icon(Icons.account_circle)
    )
    )
    ,
  );
}


Widget botonEntrar(){
  return FlatButton(
    color: Colors.blueAccent,
    onPressed:(){},
    padding: EdgeInsets.symmetric(horizontal: 100,vertical: 10),
     child: Text("Enter",style: TextStyle(fontSize: 25,color:Colors.white),));

}
Widget icono(){
  return Icon(Icons.account_circle,color: Colors.black);
}
Widget mensaje(){

  return  Text("INGRESA TUS DATOS",style: TextStyle(color: Colors.black,fontSize:28,fontWeight: FontWeight.w500,),
  );
}

Widget camposPass(){
  return Container(
    
    padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10,),
    
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
      hintText: "Contrase??a",fillColor: Colors.white, filled: true,prefixIcon: Icon(Icons.password)
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
      hintText: "Correo Electronico",fillColor: Colors.white, filled: true,prefixIcon: Icon(Icons.attach_email)
    )
    )
    ,
  );
}
Widget botonGuardar(){
  
    return FlatButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
        side: BorderSide(color: Colors.blueAccent)),
      color: Colors.blueAccent,
      textColor: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 130,vertical: 10),
      onPressed: () {},
      child: Text(
        "Registrar".toUpperCase(),
        style: TextStyle(
          fontSize: 14.0,
        ),
      ),
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
      onPressed: () {},
      child: Text(
        "Cancelar".toUpperCase(),
        style: TextStyle(
          fontSize: 14.0,
        ),
      ),
    );
}
Widget camposRePass(){
  return Container(
    
    padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10,),
    
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
      hintText: "Confirmar Contrase??a",fillColor: Colors.white, filled: true,prefixIcon: Icon(Icons.password)
    )
    )
    ,
  );
}