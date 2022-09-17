// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:noticias/pages/detalle.page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  int peso = 30;
  int edad = 10;
  int valorpeso = 50;
  double _currentSliderValue = 50;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calcula IMC")),
      body: Column(children: [
        Expanded(
            child: Container(
          color: Color.fromARGB(255, 9, 14, 33),
          child: Row(
            children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.man, size: 100, color: Colors.white),
                        Text("Hombre"),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 29, 30, 51),
                      borderRadius: BorderRadius.circular(20),
                    )),
              )),
//segundo cuadro
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.woman, size: 100, color: Colors.white),
                        Text("Mujer"),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 29, 30, 51),
                      borderRadius: BorderRadius.circular(20),
                    )),
              ))
            ],
          ),
        )),

        Expanded(
            child: Container(
          // ignore: sort_child_properties_last
          child: Row(
            children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(

                    // ignore: sort_child_properties_last
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Estatura",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        Text(_currentSliderValue.toString(),
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.bold)),
                        Slider(
                          value: _currentSliderValue,
                          max: 250,
                          divisions: 250,
                          label: _currentSliderValue.round().toString(),
                          onChanged: (double value) {
                            setState(() {
                              _currentSliderValue = value;
                            });
                          },
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 110, 113, 163),
                      borderRadius: BorderRadius.circular(20),
                    )),
              )),
            ],
          ),
          color: Color.fromARGB(255, 29, 30, 51),
        )),

//cuarto

        Expanded(
            child: Container(
          color: Color.fromARGB(255, 9, 14, 33),
          child: Row(
            children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    // ignore: sort_child_properties_last
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Peso"),
                        Text(peso.toString(),
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.bold)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    peso += 1;
                                  });
                                },
                                iconSize: 40,
                                icon: Icon(Icons.add_circle)),
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    peso -= 1;
                                  });
                                },
                                iconSize: 40,
                                icon: Icon(Icons.remove_circle)),
                          ],
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 29, 30, 51),
                      borderRadius: BorderRadius.circular(20),
                    )),
              )),

//quinto
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    // ignore: sort_child_properties_last
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Edad:"),
                        Text(
                          edad.toString(),
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    edad += 1;
                                  });
                                },
                                iconSize: 40,
                                icon: Icon(Icons.add_circle)),
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    edad -= 1;
                                  });
                                },
                                iconSize: 40,
                                icon: Icon(Icons.remove_circle)),
                          ],
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 29, 30, 51),
                      borderRadius: BorderRadius.circular(20),
                    )),
              )),
            ],
          ),
        )),

        GestureDetector(
          onTap: () {
            String resultado = "";
            String TextoResultado = "";
            double valormetro = _currentSliderValue / 100;
            double calculoIMC = peso / (valormetro * valormetro);
            var color;
            // print(calculoIMC);

            if (calculoIMC < 18.5) {
              resultado = "Bajo peso";
              TextoResultado = "Tiene un peso corporal bajo";
              color = Colors.orange;
            }
            ;

            if (calculoIMC > 18.5 && calculoIMC < 24.9) {
              resultado = "Normal";
              TextoResultado = "Tiene un peso corporal normal";
              color = Colors.green;
            }
            ;

            if (calculoIMC > 25 && calculoIMC > 29.9) {
              resultado = "Sobrepeso";
              TextoResultado = "Tiene sobrepeso";
              color = Color.fromARGB(255, 150, 92, 5);
            }
            ;

            if (calculoIMC > 30 && calculoIMC > 34.9) {
              resultado = "Obesidad I";
              TextoResultado = "Tiene Obesidad tipo 1";
              color = Colors.red;
            }
            ;

            if (calculoIMC > 35 && calculoIMC > 39.9) {
              resultado = "Obesidad II";
              TextoResultado = "Tiene Obesidad tipo 2";
              color = Color.fromARGB(255, 130, 35, 29);
            }
            ;

            if (calculoIMC > 40 && calculoIMC > 49.9) {
              resultado = "Obesidad III";
              TextoResultado = "Tiene Obesidad tipo 3";
              color = Color.fromARGB(255, 127, 50, 46);
            }
            ;

            if (calculoIMC > 50) {
              resultado = "Obesidad IV";
              TextoResultado = "Tiene Obesidad tipo 4";
              color = Color.fromARGB(255, 104, 53, 49);
            }
            ;

            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ((context) => DetallePage(
                          valorIMC: calculoIMC,
                          resultado: resultado,
                          TextoResultado: TextoResultado,
                          color: color,
                        ))));
          },
          child: Container(
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
        )
      ]),
    );
  }
}
