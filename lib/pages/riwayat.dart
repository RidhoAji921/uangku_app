import 'package:flutter/material.dart';

class RiwayatBodyPage extends StatelessWidget {
  final List<TableRow> tabelRiwayat = [
    TableRow(
      children: const [
        Text("Satu"),
        Text("Dua"),
        Text("Tiga"),
      ]
    ),
    TableRow(
      children: [
        Text("Satu"),
        Text("Dua"),
        Text("Tiga"),
      ]
    ),
    TableRow(
      children: [
        Text("Satu"),
        Text("Dua"),
        Text("Tiga"),
      ]
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Table(
            border: const TableBorder(
              top: BorderSide(width: 2),
              right: BorderSide(width: 2),
              left: BorderSide(width: 2),
              bottom: BorderSide(width: 2),
              horizontalInside: BorderSide(width: 1),
              verticalInside: BorderSide(width: 1),
            ),
            children: tabelRiwayat
          ),
        )
      ],
    );
  }
}