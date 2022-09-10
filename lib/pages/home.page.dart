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
  int peso = 0;
  int edad = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Text ("Calcula IMC")
        ),
        body: Column(
          children: [
            Expanded(child: Container(
              color: Color.fromARGB(255, 9, 14, 33),
              child: Row(
                children: [
                  Expanded(child: Padding(
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
                    Expanded(child: Padding(
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
            )
            ),
            
            
            
             Expanded(child: Container(
              // ignore: sort_child_properties_last
              child: Row(

                    children: [
                  Expanded(child: Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Container(
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


             Expanded(child: Container(
              color: Color.fromARGB(255, 9, 14, 33),
              child: Row(
                children: [
                  Expanded(child: Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Container(
                      // ignore: sort_child_properties_last
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Peso"),
                          Text(peso.toString(), style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold

                          )),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                            IconButton(onPressed: (){
                              setState(() {
                                peso +=1;
                              });

                            },
                            iconSize: 40,
                            icon: Icon(Icons.add_circle)),
                              
                            IconButton(onPressed: (){
                              setState(() {
                                peso -=1;
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
                    Expanded(child: Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Container(
                      // ignore: sort_child_properties_last
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Edad:"),
                          Text(edad.toString(), style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold

                          ),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                            IconButton(onPressed: (){
                            setState(() {
                              edad +=1;
                            });
                            },
                            iconSize: 40,
                            icon: Icon(Icons.add_circle)),
                              
                            IconButton(onPressed: (){
                              setState(() {
                              edad -=1;
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
            )
            ),
          
          
              GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: ((context) => DetallePage())));
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