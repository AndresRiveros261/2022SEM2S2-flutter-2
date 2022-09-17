import "package:flutter/material.dart";

class DetallePage extends StatelessWidget {
  DetallePage(
      {super.key,
      required this.valorIMC,
      required this.resultado,
      required this.TextoResultado,
      required this.color});
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
          Center(
              child: Text(
            "Resultado",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [],
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                // ignore: sort_child_properties_last
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Icon(Icons.man, size: 100, color: Colors.white),
                    //  Text("Hombre"),
                    Center(
                        child: Text(
                      resultado.toString(),
                      style: TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )),
                    Center(
                        child: Text(
                      valorIMC.toString(),
                      style: TextStyle(
                          fontSize: 80,
                          fontWeight: FontWeight.bold,
                          color: color),
                    )),

                    Center(
                        child: Text(
                      TextoResultado.toString(),
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 29, 30, 51),
                  borderRadius: BorderRadius.circular(20),
                )),
          )),
          Container(
            height: 100,
            color: Color.fromARGB(255, 228, 15, 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Calcular",
                    style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
