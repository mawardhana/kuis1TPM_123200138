import 'package:flutter/material.dart';
import 'dart:math';

class Segitiga extends StatefulWidget {
  const Segitiga({Key? key}) : super(key: key);

  @override
  State<Segitiga> createState() => _SegitigaState();
}

class _SegitigaState extends State<Segitiga> {
  final TextEditingController _aController = TextEditingController();
  final TextEditingController _bController = TextEditingController();
  final TextEditingController _cController = TextEditingController();

  double _luas = 0.0;
  double _keliling = 0.0;

  void _hitung() {
    double a = double.parse(_aController.text);
    double b = double.parse(_bController.text);
    double c = double.parse(_cController.text);

    double s = (a + b + c) / 2;

    _luas = sqrt(s * (s - a) * (s - b) * (s - c));
    _keliling = a + b + c;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Perhitungan Luas dan Keliling Segitiga',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: Text('Perhitungan Luas dan Keliling Segitiga'),
        ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.white,
                Colors.deepOrangeAccent,
              ],
            ),
          ),
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: _aController,
                keyboardType: TextInputType.number,
                decoration:
                    InputDecoration(hintText: 'Masukkan Panjang sisi a'),
              ),
              TextField(
                controller: _bController,
                keyboardType: TextInputType.number,
                decoration:
                    InputDecoration(hintText: 'Masukkan Panjang sisi b'),
              ),
              TextField(
                controller: _cController,
                keyboardType: TextInputType.number,
                decoration:
                    InputDecoration(hintText: 'Masukkan Panjang sisi c'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _hitung,
                child: Text('Hasil'),
              ),
              SizedBox(height: 16),
              Text(
                'Luas: $_luas',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 10),
              Text(
                'Keliling: $_keliling',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
