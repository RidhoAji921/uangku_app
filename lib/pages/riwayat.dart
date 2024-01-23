import 'package:flutter/material.dart';
import 'package:uangku_app/classes/format_currency.dart';

TableRow riwayatRow(int id, String tanggal, int transaksi, int uang){
  return TableRow(
      children: [
        Center(child: Padding(
          padding: const EdgeInsets.only(left: 2.0),
          child: SingleChildScrollView(child: Center(child: Text(NumberFormater.numberFormatter(id))), scrollDirection: Axis.horizontal,),
        )),
        Center(child: Text(tanggal)),
        Padding(
          padding: const EdgeInsets.only(left: 3),
          child: Text(CurrencyFormat.convertToIdr(transaksi, 2)),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 3),
          child: Text(CurrencyFormat.convertToIdr(uang, 2)),
        ),
      ]
  );
}

class RiwayatBodyPage extends StatelessWidget {
  final List<TableRow> tabelRiwayat = [
    TableRow(
      children: [
        Center(child: Text("No")),
        Center(child: Text("Tanggal")),
        Center(child: Text("Transaksi")),
        Center(child: Text("Uang")),
      ]
    ),
    riwayatRow(1, "69-69-69", 69, 420),
    riwayatRow(22, "69-69-69", 69, 420),
    riwayatRow(666, "69-69-69", 69, 420),
    riwayatRow(4444, "69-69-69", 69, 420),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Table(
            columnWidths: {
              0: FixedColumnWidth(30)
            },
            border: const TableBorder(
              top: BorderSide(width: 2),
              right: BorderSide(width: 2),
              left: BorderSide(width: 2),
              bottom: BorderSide(width: 2),
              horizontalInside: BorderSide(width: 1),
              verticalInside: BorderSide(width: 1),
            ),
            children: tabelRiwayat,
          ),
        )
      ],
    );
  }
}