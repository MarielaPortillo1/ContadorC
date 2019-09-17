import 'package:flutter/material.dart';


class ContadorPages extends StatefulWidget{ //widget con estado

  @override
  createState(){
    return _ContadorPagesState();
  }

}

class _ContadorPagesState extends State<ContadorPages>{ //estado del Widget

  final  estilo = new TextStyle(fontSize: 25); //mantener siempre el estilo del texto constante
  int _conteo =0; //iniciamos el contador


  @override
  Widget build (BuildContext context){ //metodo buil

    return Scaffold( //nuestra app o tod. el cuerpo de la app

      appBar: AppBar( //barra donde va el titulo

        title: Center(child: Text('Contador')),
        elevation: 0.0,



      ),


      body: Center( //dentro del cuerpo agregamos texto mendiante un array

        child: Column(children: <Widget>[
          Text('Numero de veces que se preciono el boton'),
          Text('$_conteo', style: estilo,),
        ],
          mainAxisAlignment: MainAxisAlignment.center, //centra la columnas
        ),

      ),

        floatingActionButton: _crearBotones(), //llamamos el metodo de los botonos
    );

  }

Widget _crearBotones(){  //funcion para crear botones

    return Row( //ingresaremos los botones por row

      mainAxisAlignment: MainAxisAlignment.end, //tipo aliniado
      children: <Widget>[  //widget hijos --arreglo
          SizedBox(width:30), //agrega espacio a los botones
        FloatingActionButton(child: Icon(Icons.exposure_zero),onPressed: _reset ), //agrega el boton reset y evento onPressed con su metodo _reset
        Expanded(child: SizedBox(width:5.0)), //espacio de los botones
        FloatingActionButton(child: Icon(Icons.remove), onPressed: _sustraer,), //agrega el boton remove (-)y evento onPressed con su metodo _sustraer
       // Expanded(child: SizedBox(width:5.0)),
        SizedBox(width: 5.0), //agregamos espacio
        FloatingActionButton(child: Icon(Icons.add),onPressed: _agregar,),//agrega el boton agregar(+) y evento onPressed con su metodo _agregar

      ],
    );


}

    void _agregar(){  //metodo agregar
      _conteo ++;
      setState(() {    //estado

      });

    }

    void _sustraer(){  //metodo sustraer
    if(_conteo !=0){
      setState(() {
        _conteo --;
      });

     }else{
      _conteo =0;
      }
    }

    void _reset(){  //metodo de reinicio

    setState(() =>_conteo=0);
    }

}