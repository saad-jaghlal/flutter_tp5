// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController lgController = TextEditingController();
  final TextEditingController pwController = TextEditingController();
  String valeur = "Monsieur";

  var  etat = ["Monsieur", "Madame", "Mademoiselle"];
  // String result = etat[0];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Authentification",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: TextField(
                controller: lgController,
                decoration: InputDecoration(
                  labelText: "Saisir votre login",
                  labelStyle: TextStyle(fontSize: 15),
                  icon: Icon(Icons.person_2_outlined),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: TextField(
                controller: pwController,
                decoration: InputDecoration(
                  labelText: "Saisir votre mot de passe",
                  labelStyle: TextStyle(fontSize: 15),
                  icon: Icon(Icons.password_rounded),
                ),
                keyboardType: TextInputType.visiblePassword,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(child: Text("OK"), onPressed: () => {}),
            SizedBox(
              height: 15,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text("Madame"),
                    Radio(
                      value: etat[0],
                      groupValue: valeur,
                      onChanged: (Object? value) {
                        setState(() {
                          valeur = etat[0];
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text("Mademoiselle"),
                    Radio(
                      value: etat[1],
                      groupValue: valeur,
                      onChanged: (Object? value) {
                        setState(() {
                          valeur = etat[1];
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text("Monsieur"),
                    Radio(
                      value: etat[2],
                      groupValue: valeur,
                      onChanged: (Object? value) {
                        setState(() {
                          valeur = etat[2];
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text("Result: $valeur"),
            SizedBox(
              height: 15,
            ),
//            
          ],
        ),
      ),
    );
  }
}
