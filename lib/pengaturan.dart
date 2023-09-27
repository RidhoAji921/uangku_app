import 'package:flutter/material.dart';

class PengaturanPageBody extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Aktifkan anu"),
            Switch(value: false, onChanged: (bool aktif) {print("switch kondisi: #aktif");})
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Aktifkan anu"),
            Switch(value: false, onChanged: (bool aktif) {print("switch kondisi: #aktif");})
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Aktifkan anu"),
            Switch(value: false, onChanged: (bool aktif) {print("switch kondisi: #aktif");})
          ],
        )
      ],
    );
  }
}