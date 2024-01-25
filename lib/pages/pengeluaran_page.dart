import 'package:flutter/material.dart';
import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uangku_app/providers/provider_uang.dart';

class Pengeluaran_page extends StatelessWidget {
  Pengeluaran_page({super.key});

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
                labelText: 'Rp 999.999.999.999',
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
            context.read<UangBloc>().pengeluaran(double.parse(text));
            Navigator.pop(context);
          },
          child: const Text("Proses", style: TextStyle(fontSize: 30),),
        ),
      )
    );
  }
}