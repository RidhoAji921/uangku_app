import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uangku_app/providers/provider_theme.dart';

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
              Text("Dark Mode"),
              Switch(value: pengaturan, onChanged: (value) {
                stateUpdate(value);
                context.read<DarkTheme>().changeTheme();
                })
            ],
          ),
        ],
      ),
    );
  }
}