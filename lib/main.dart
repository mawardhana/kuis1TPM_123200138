import 'package:flutter/material.dart';
import 'segitiga.dart';
import 'layang-layang.dart';
import 'identitas.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quis TPM Kelas C',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text('KUIS TPM-123200138'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.deepOrangeAccent,
              Colors.deepOrangeAccent,
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'KUIS 1 TEKNOLOGI PEMROGRAMAN MOBILE,',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 40,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              maxLines: 1,
            ),
            Text(
              'PERHITUNGAN SEGITIGA DAN LAYANG-LAYANG',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              maxLines: 1,
            ),
            Text(
              '(123200138)',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              maxLines: 1,
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          if (value == 2)
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Segitiga()));
          if (value == 1)
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Layang2()));
          if (value == 0)
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Identitas()));
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Identitas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calculate_outlined),
            label: 'Perhitungan Layang-Layang',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calculate),
            label: 'Perhitungan Segitiga',
          ),
        ],
        selectedItemColor: Colors.blueGrey,
      ),
    );
  }
}
