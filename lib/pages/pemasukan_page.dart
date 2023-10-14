import 'package:flutter/material.dart';
import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';

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
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Rp 999.999.999.999,99',
            ),
            keyboardType: TextInputType.number,
            inputFormatters: [CurrencyTextInputFormatter(
              locale: 'id',
              decimalDigits: 0,
              symbol: 'Rp',)
            ],
          ),
        )
      ]),
      bottomNavigationBar: BottomAppBar(
        child: ElevatedButton(
          onPressed: () {
            String text = pemasukanController.text.replaceAll(new RegExp(r'[^0-9]'),'');
            tambahUang(double.parse(text));
            Navigator.pop(context);
            },
            child: Text("Proses", style: TextStyle(fontSize: 30),),
        ),
      )
    );
  }
}
