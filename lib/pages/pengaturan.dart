import 'package:flutter/material.dart';

class PengaturanPageBody extends StatefulWidget{

  @override
  State<PengaturanPageBody> createState() => _PengaturanPageBodyState();
}

class _PengaturanPageBodyState extends State<PengaturanPageBody> {
  bool pengaturan = false;

  void stateUpdate(bool value){
    setState(() {
      pengaturan = value;
    });
  }

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Aktifkan anu"),
              Switch(value: pengaturan, onChanged: stateUpdate)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Aktifkan anu"),
              Switch(value: pengaturan, onChanged: stateUpdate)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Aktifkan anu"),
              Switch(value: pengaturan, onChanged: stateUpdate)
            ],
          )
        ],
      ),
    );
  }
}