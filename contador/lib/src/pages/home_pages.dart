import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {



  final estilo = new TextStyle(fontSize: 25); // constante mantener el mismo tam. de letra
  final int conteo =20;


  @override
  Widget  build(BuildContext context){

    return Scaffold(
      appBar:AppBar (

      title: Center(child: Text('Contador')), //child texto de la barra centrado
        elevation: 0.0,
      ),

      body: Center(

        child:Column(children: <Widget>[

          Text('Numero de veces que se preciono el boton'),
          Text(''),
        ],
          mainAxisAlignment: MainAxisAlignment.center, //centra las columnas
        )
      ),

      floatingActionButton: FloatingActionButton(onPressed: () {

        print('Hola Mundo');
      },

      child: Icon(Icons.add),
      ),


    );

  }

}