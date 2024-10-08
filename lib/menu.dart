import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myapp/folder_generator.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class menu extends StatelessWidget {
  const menu({super.key});

  @override
  Widget build(BuildContext context, ref) {
    String nome_pasta = ref.watch(strNotifyProvider);
    final nome = "teste";
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 31, 31, 31),
        title: const Text("Anotações",
            style: TextStyle(color: Color.fromRGBO(0, 169, 212, 1.0))),
      ),
      body: Center(
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            ...nome_pasta.map((e) => Container(
                  width: 180,
                  margin: EdgeInsets.all(6.0),
                  child: Card(
                    color: Color.fromARGB(255, 31, 31, 31),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset('/home/user/myapp/assets/Pasta.png'),
                          GradientText(
                            "Matemática",
                            style: TextStyle(fontSize: 20),
                            colors: [Color(0xff00a9d4), Color(0xff40ffdc)],
                          ),
                        ]),
                  ),
                )),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const anotacao()),
                  );
                },)           
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const anotacao()),
                  );
                },
                child: Container(
                  width: 180,
                  margin: EdgeInsets.all(6.0),
                  child: Card(
                    color: Color.fromARGB(255, 31, 31, 31),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset('/home/user/myapp/assets/Pasta.png'),
                          GradientText(
                            "Matemática",
                            style: TextStyle(fontSize: 20),
                            colors: [Color(0xff00a9d4), Color(0xff40ffdc)],
                          ),
                        ]),
                  ),
                )),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const anotacao()),
                  );
                },
                child: Container(
                  width: 180,
                  margin: EdgeInsets.all(6.0),
                  child: Card(
                    color: Color.fromARGB(255, 31, 31, 31),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset('/home/user/myapp/assets/Pasta.png'),
                          GradientText(
                            "Geografia",
                            style: TextStyle(fontSize: 20),
                            colors: [Color(0xff00a9d4), Color(0xff40ffdc)],
                          ),
                        ]),
                  ),
                )),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const anotacao()),
                  );
                },
                child: Container(
                  width: 180,
                  margin: EdgeInsets.all(6.0),
                  child: Card(
                    color: Color.fromARGB(255, 31, 31, 31),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset('/home/user/myapp/assets/Pasta.png'),
                          GradientText(
                            "Português",
                            style: TextStyle(fontSize: 20),
                            colors: [Color(0xff00a9d4), Color(0xff40ffdc)],
                          ),
                        ]),
                  ),
                )),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        highlightElevation: BorderSide.strokeAlignCenter,
        backgroundColor: const Color.fromRGBO(31, 31, 31, 1.0),
        tooltip: 'New',
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Color.fromRGBO(0, 169, 212, 1.0)),
          borderRadius: BorderRadius.circular(10),
        ),
        onPressed: () {
          ref.read(strNotifyProvider.notifier).addString(nome);
        },
        child: const Icon(Icons.add,
            color: Color.fromRGBO(0, 169, 212, 1.0), size: 42),
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
        iconTheme: IconThemeData(
          color: Color.fromRGBO(0, 169, 212, 1.0),
        ),
        backgroundColor: Color.fromARGB(255, 31, 31, 31),
        title: const Text("Matemática",
            style: TextStyle(color: Color.fromRGBO(0, 169, 212, 1.0))),
      ),
      body: Center(
          child: GridView.count(crossAxisCount: 2, children: <Widget>[
        GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const anotacao()),
              );
            },
            child: Container(
              width: 180,
              margin: EdgeInsets.all(6.0),
              child: Card(
                color: Color.fromARGB(255, 31, 31, 31),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      GradientText(
                        "Matemática",
                        style: TextStyle(fontSize: 20),
                        colors: [Color(0xff00a9d4), Color(0xff40ffdc)],
                      ),
                    ]),
              ),
            )),
        GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const anotacao()),
              );
            },
            child: Container(
              width: 180,
              margin: EdgeInsets.all(6.0),
              child: Card(
                color: Color.fromARGB(255, 31, 31, 31),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      GradientText(
                        "Matemática",
                        style: TextStyle(fontSize: 20),
                        colors: [Color(0xff00a9d4), Color(0xff40ffdc)],
                      ),
                    ]),
              ),
            )),
        GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const anotacao()),
              );
            },
            child: Container(
              width: 180,
              margin: EdgeInsets.all(6.0),
              child: Card(
                color: Color.fromARGB(255, 31, 31, 31),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      GradientText(
                        "Matemática",
                        style: TextStyle(fontSize: 20),
                        colors: [Color(0xff00a9d4), Color(0xff40ffdc)],
                      ),
                    ]),
              ),
            )),
      ])),
    );
  }
}
