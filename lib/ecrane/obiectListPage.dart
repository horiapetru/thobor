// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'models/obiect.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Thobor',
      home: ObiectListPage(),
    );
  }
}

class ObiectListPage extends StatelessWidget {
  final List<Obiect> obiecte = [
    Obiect(name: 'test', imageAsset: 'assets/test.png')
  ];
  @override
  Widget build(BuildContext context)
  return Scaffold(
    appBar: AppBar(
      title: Text('Butonul de test THOBOR',style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold)),
      centerTitle: true,
      backgroundColor: const Color.fromARGB(255, 226, 141, 241),
    ),
    body: ListView.builder(
      itemCount: obiecte.length,
      itemBuilder: (context, index){
        return InkWell(
          child: Card(
            elevation: 5,
            margin:  EdgeInsets.all(12),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 150,
                  child: Padding(
                    padding: EdgeInsets.only(right: 16.0),
                    child: Image.asset(
                      obiecte[index].imageAsset,
                      fit: BoxFit.cover,
                    ) 
                    ),
                ),
              Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(obiecte[index].name,
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)
                      )
                    ],
                  ),
                )
              )
              ]
              ),
          ),
          
          ),
          
        );
      }
    )
  );
}
