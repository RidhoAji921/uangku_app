import 'package:flutter/material.dart';

class Pemasukan_page extends StatelessWidget {
  Pemasukan_page({super.key, required this.tambahUang});

  final Function(double) tambahUang;
  final pemasukanController = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pemasukan"),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
          width: double.infinity,
          child: TextField(
            controller: pemasukanController,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Rp 999.999.999.999,99',
              )),
        )
      ]),
      bottomNavigationBar: BottomAppBar(
        child: ElevatedButton(
          onPressed: () {tambahUang(double.parse(pemasukanController.text));}, child: Text("Proses", style: TextStyle(fontSize: 30),),
        ),
      )
    );
  }
}
