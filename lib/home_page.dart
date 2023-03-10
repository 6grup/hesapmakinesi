// ignore_for_file: unnecessary_new, prefer_const_constructors, sort_child_properties_last, non_constant_identifier_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() => new HomePageState();
}

bool _iconBool = false;

IconData _iconLight = Icons.wb_sunny;
IconData _iconDark = Icons.nights_stay;

ThemeData _lightTheme = ThemeData(
  primarySwatch: Colors.red,
  buttonTheme: const ButtonThemeData(buttonColor: Colors.red),
  brightness: Brightness.light,
);

ThemeData _darkTheme = ThemeData(
  brightness: Brightness.dark,
  buttonTheme: const ButtonThemeData(buttonColor: Colors.amber),
);

class HomePageState extends State<HomePage> {
  num sayi1 = 0, sayi2 = 0, sonuc = 0;

  final TextEditingController t1 = new TextEditingController();
  final TextEditingController t2 = new TextEditingController();

  void Topla() {
    setState(() {
      sayi1 = int.parse(t1.text);
      sayi2 = int.parse(t2.text);
      sonuc = sayi1 + sayi2;
    });
  }

  void Cikar() {
    setState(() {
      sayi1 = int.parse(t1.text);
      sayi2 = int.parse(t2.text);
      sonuc = sayi1 - sayi2;
    });
  }

  void Carp() {
    setState(() {
      sayi1 = int.parse(t1.text);
      sayi2 = int.parse(t2.text);
      sonuc = sayi1 * sayi2;
    });
  }

  void Bol() {
    setState(() {
      sayi1 = double.parse(t1.text);
      sayi2 = double.parse(t2.text);
      sonuc = sayi1 / sayi2;
    });
  }

  void Temizle() {
    setState(() {
      t1.text = "";
      t2.text = "";
      sonuc = 0;
      sonuc = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _iconBool ? _darkTheme : _lightTheme,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Hesap Makinesi"),
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  _iconBool = !_iconBool;
                });
              },
              icon: Icon(_iconBool ? _iconDark : _iconLight),
            )
          ],
        ),
        body: new Container(
          padding: const EdgeInsets.all(40.0),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(
                "Sonu?? : $sonuc",
                style: new TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
              new TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: "L??tfen de??er giriniz"),
                controller: t1,
              ),
              new TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: "L??tfen de??er giriniz"),
                controller: t2,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20.0),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new MaterialButton(
                    child: new Text("+"),
                    color: Color.fromARGB(255, 231, 103, 126),
                    onPressed: Topla,
                  ),
                  new MaterialButton(
                    child: new Text("-"),
                    color: Color.fromARGB(255, 231, 103, 126),
                    onPressed: Cikar,
                  ),
                ],
              ),
              new Padding(
                padding: const EdgeInsets.only(top: 20.0),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new MaterialButton(
                    child: new Text("*"),
                    color: Color.fromARGB(255, 231, 103, 126),
                    onPressed: Carp,
                  ),
                  new MaterialButton(
                    child: new Text("/"),
                    color: Color.fromARGB(255, 231, 103, 126),
                    onPressed: Bol,
                  ),
                ],
              ),
              new Padding(
                padding: const EdgeInsets.only(top: 20.0),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new MaterialButton(
                    child: new Text("Temizle"),
                    color: Color.fromARGB(255, 231, 103, 126),
                    onPressed: Temizle,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
