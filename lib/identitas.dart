import 'package:flutter/material.dart';

class Identitas extends StatelessWidget {
  const Identitas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Identitas/Profil'),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      body: Container(
        height: double.infinity,
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
        padding: const EdgeInsets.only(top: 20),
        alignment: Alignment.center,
        child: Column(
          children: [
            Card(
              elevation: 10,
              child: Container(
                height: 230,
                width: 350,
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height,
                        width: 130,
                        child: Image.asset('assets/images/arya.png'),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Nama : Maulana Arya',
                          style: TextStyle(fontSize: 16),
                          maxLines: 1,
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          'NIM  : 123200138',
                          style: TextStyle(fontSize: 16),
                          maxLines: 1,
                        ),
                        Text(
                          'Kelas  : IF-C',
                          style: TextStyle(fontSize: 16),
                          maxLines: 1,
                        ),
                        Text(
                          'Hobi  : Olahraga',
                          style: TextStyle(fontSize: 16),
                          maxLines: 1,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
