import 'dart:ui';

import 'package:flutter/material.dart';

class menu extends StatelessWidget {
  const menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 31, 31, 31),
        title: const Text("Anotações",
        style: TextStyle(color: Colors.white)),
      ),
      
      body: Center(
        child: Column(children: <Widget>[
          GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const anotacao()),
          ),
          child: Card(),
      )]),
        
      ),
      floatingActionButton:
      FloatingActionButton(
          highlightElevation: BorderSide.strokeAlignCenter,
          backgroundColor: const Color.fromRGBO(31,31,31, 1.0),
          tooltip: 'New',
          shape: RoundedRectangleBorder(
            side: const BorderSide(color:  Color.fromRGBO(0,169,212,1.0)), borderRadius: BorderRadius.circular(10),
          ),
          onPressed: (){},
          child: const Icon(Icons.add, color: Color.fromRGBO(0,169,212,1.0), size: 42),
          ),
     
    );
    
  }
}

class anotacao extends StatelessWidget {
  const anotacao({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate back to first route when tapped.
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}
