// ignore_for_file: unnecessary_new, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'home_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Calculator App",
      theme: new ThemeData(primarySwatch: Colors.red),
      home: new HomePage(),
    );
  }
}

// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       darkTheme: ThemeData(
//         brightness: Brightness.dark,
//       ),
//       title: "Hesap Makinesi",
//       home: iskelet(),
//     );
//   }
// }

// bool _iconBool = false;

// IconData _iconLight = Icons.wb_sunny;
// IconData _iconDark = Icons.nights_stay;

// ThemeData _LightTheme = ThemeData(
//   primarySwatch: Colors.amber,
//   brightness: Brightness.light,
//   buttonTheme: const ButtonThemeData(buttonColor: Colors.amberAccent),
// );

// ThemeData _darkTheme = ThemeData(
//   primarySwatch: Colors.red,
//   brightness: Brightness.dark,
// );

// class iskelet extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Basit Hesap Makinesi"),
//         actions: [
//           IconButton(
//               onPressed: () {}, icon: Icon(_iconBool ? _iconDark : _iconLight))
//         ],
//       ),
//       body: AnaEkran(),
//     );
//   }
// }

// class AnaEkran extends StatefulWidget {
//   const AnaEkran({super.key});

//   @override
//   State<AnaEkran> createState() => _AnaEkranState();
// }

// class _AnaEkranState extends State<AnaEkran> {
//   num sayi1 = 0, sayi2 = 0, sonuc = 0;

//   TextEditingController t1 = TextEditingController();
//   TextEditingController t2 = TextEditingController();

//   sayiTopla() {
//     setState(() {
//       sayi1 = num.parse(t1.text);
//       sayi2 = num.parse(t2.text);
//       sonuc = sayi1 + sayi2;
//     });
//   }

//   sayiCikar() {
//     setState(() {
//       sayi1 = num.parse(t1.text);
//       sayi2 = num.parse(t2.text);
//       sonuc = sayi1 - sayi2;
//     });
//   }

//   sayiCarp() {
//     setState(() {
//       sayi1 = num.parse(t1.text);
//       sayi2 = num.parse(t2.text);
//       sonuc = sayi1 * sayi2;
//     });
//   }

//   sayiBol() {
//     setState(() {
//       sayi1 = num.parse(t1.text);
//       sayi2 = num.parse(t2.text);
//       sonuc = sayi1 / sayi2;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.all(50.0),
//       child: Center(
//           child: Column(
//         children: <Widget>[
//           Text(sonuc.toString()),
//           TextField(
//             controller: t1,
//             decoration: InputDecoration(
//               hintText: 'Lütfen değer giriniz',
//               icon: Icon(Icons.add),
//             ),
//           ),
//           TextField(
//             controller: t2,
//             decoration: InputDecoration(
//               hintText: 'Lütfen değer giriniz',
//               icon: Icon(Icons.star),
//             ),
//           ),
//           ElevatedButton(
//             child: Text("+ Topla"),
//             onPressed: sayiTopla,
//           ),
//           ElevatedButton(
//             onPressed: sayiCikar,
//             child: Text("- Çıkar"),
//           ),
//           ElevatedButton(
//             onPressed: sayiCarp,
//             child: Text("* Çarp"),
//           ),
//           ElevatedButton(
//             onPressed: sayiBol,
//             child: Text("/ Böl"),
//           ),
//         ],
//       )),
//     );
//   }
// }
