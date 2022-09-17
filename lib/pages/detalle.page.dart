import "package:flutter/material.dart";

class DetallePage extends StatelessWidget {
  DetallePage({super.key, required this.valorIMC, required this.resultado, required this.TextoResultado, required this.color});
  double valorIMC;
  String resultado;
  String TextoResultado;
  var color;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detalle del Calculo"),
      ),
     
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          

          Center(child: Text(valorIMC.toString(), style: TextStyle( color:color),)),
          Center(child: Text(resultado.toString())),
          Center(child: Text(TextoResultado.toString())), 
          
        ],
      ),
      
      
      
    );
  }
}