import 'package:flutter/material.dart';
import './pemasukan_page.dart';
import 'package:uangku_app/format_currency.dart';

class HomeBodyPage extends StatelessWidget {
  const HomeBodyPage({super.key, required this.uang, required this.pemasukanNow, required this.pengeluaranNow});
  final double uang;
  final double pemasukanNow;
  final double pengeluaranNow;

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
          child: Column(
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
                  '${CurrencyFormat.convertToIdr(uang, 2)}',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 0, left: 10, bottom: 10),
                child: Text('${CurrencyFormat.convertToIdr(pemasukanNow, 2)}'),
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text("Pengeluaran bulan lalu"),
                  Text("${CurrencyFormat.convertToIdr(pemasukanNow, 2)}", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500)),
                  // Icon(Icons.add),
                ],
              ),
              Column(
                children: [
                  Text("Pengeluaran bulan ini"),
                  Text("${CurrencyFormat.convertToIdr(pengeluaranNow, 2)}", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),),
                  // Icon(Icons.thumb_up),
                ],
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
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Pemasukan_page()),
                    );
                  },
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
