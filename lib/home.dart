import 'package:flutter/material.dart';

class HomeBodyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 236, 236, 236),
              border: Border.all(
                color: Colors.red,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(15))),
          width: 370,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 5, left: 10),
                child: Text("Uangku"),
              ),
              Padding(
                padding: EdgeInsets.only(top: 0, left: 10),
                child: Text(
                  "Rp 69.420",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 0, left: 10, bottom: 10),
                child: Text("Rp 69.420"),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 236, 236, 236),
            border: Border.all(
              color: Colors.red,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(15))),
          width: 370,
          child: Padding(
            padding: const EdgeInsets.only(top: 20,bottom: 20,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                  onPressed: () {print("Pemasukkan");},
                  child: const Column(
                    children: [
                      Icon(Icons.add, size: 40,),
                      Text("Pemasukan")
                    ],
                  )
                ),
                OutlinedButton(
                  onPressed: () {print("Pengeluaran");},
                  child: const Column(
                    children: [
                      Icon(Icons.remove, size: 40,),
                      Text("Pengeluaran")
                    ],
                  )
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
