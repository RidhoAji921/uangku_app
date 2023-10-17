import 'package:flutter/material.dart';
import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';

class Pengeluaran_page extends StatelessWidget {
  Pengeluaran_page({super.key, required this.kurangUang});

  final Function(double) kurangUang;
  final pengeluaranController = TextEditingController();

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pengeluaran"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            child: TextField(
              controller: pengeluaranController,
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
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: ElevatedButton(
          onPressed: () {
            String text = pengeluaranController.text.replaceAll(RegExp(r'[^0-9]'),'');
            kurangUang(double.parse(text));
            Navigator.pop(context);
          },
          child: const Text("Proses", style: TextStyle(fontSize: 30),),
        ),
      )
    );
  }
}