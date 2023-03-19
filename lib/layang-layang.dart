import 'package:flutter/material.dart';
import 'dart:math';

class Layang2 extends StatefulWidget {
  @override
  _Layang2State createState() => _Layang2State();
}

class _Layang2State extends State<Layang2> {
  final _formKey = GlobalKey<FormState>();
  final _diagonalSatuController = TextEditingController();
  final _diagonalDuaController = TextEditingController();
  final _sisiSatuController = TextEditingController();
  final _sisiDuaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text('Perhitungan Layang-Layang'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
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
        padding: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                TextFormField(
                  controller: _diagonalSatuController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Masukkan Panjang Diagonal 1',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'D 1 is required';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: _diagonalDuaController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Masukkan Panjang Diagonal 2',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'D 2 is required';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: _sisiSatuController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Masukkan Panjang Sisi 1',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Sisi 1 is required';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: _sisiDuaController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Masukkan Panjang Sisi 2',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Sisi 2 is required';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      double diagonalSatu =
                          double.parse(_diagonalSatuController.text);
                      double diagonalDua =
                          double.parse(_diagonalDuaController.text);
                      double sisiSatu = double.parse(_sisiSatuController.text);
                      double sisiDua = double.parse(_sisiDuaController.text);
                      double luas = (diagonalSatu * diagonalDua) / 2;
                      double keliling = 2 * (sisiSatu + sisiDua);
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('Hasil'),
                            content: SingleChildScrollView(
                              child: ListBody(
                                children: <Widget>[
                                  Text('Luas: $luas'),
                                  Text('Keliling: $keliling'),
                                ],
                              ),
                            ),
                            actions: <Widget>[
                              TextButton(
                                child: Text('OK'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        },
                      );
                    }
                  },
                  child: Text('HASIL'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
