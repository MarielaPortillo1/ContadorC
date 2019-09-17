import 'package:flutter/material.dart';
import 'package:contador/src/pages/contador_pages.dart';

class MyApp extends StatelessWidget{

  @override
  Widget build(context ){ //metodo build

    return MaterialApp(

      debugShowCheckedModeBanner: false,


     home: ContadorPages(), //clase del contador

    );
  }
}