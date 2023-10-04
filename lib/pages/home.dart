import 'package:flutter/material.dart';
import './pemasukan_page.dart';
import 'package:uangku_app/format_currency.dart';

// ignore: must_be_immutable
class HomeBodyPage extends StatefulWidget {
  HomeBodyPage({super.key, required this.uang, required this.pemasukanNow, required this.pengeluaranNow});
  final double uang;
  final double pemasukanNow;
  final double pengeluaranNow;

  @override
  State<HomeBodyPage> createState() => _HomeBodyPageState();
}

class _HomeBodyPageState extends State<HomeBodyPage> {
  Color borderColor = const Color.fromARGB(255, 53, 53, 53);

  Color tabColor = const Color.fromARGB(255, 250, 250, 250);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
              color: tabColor,
              border: Border.all(
                color: borderColor,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(15))),
          width: 370,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 5, left: 10),
                child: Text("Uangku", style: TextStyle(fontWeight: FontWeight.w600),),
              ),
              Padding(
                padding: EdgeInsets.only(top: 0, left: 10),
                child: Text(
                  '${CurrencyFormat.convertToIdr(widget.uang, 2)}',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [ 
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(text: "Pemasukkan", style: TextStyle(color: Colors.green, fontSize: 20, fontWeight: FontWeight.w600)),
                            WidgetSpan(child: Icon(Icons.add, color: Colors.green, size: 20,))
                          ]
                        )
                      ),
                      Text("${CurrencyFormat.convertToIdr(widget.pemasukanNow, 2)}", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
                    ]
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [ 
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(text: "Pengeluaran", style: TextStyle(color: Colors.red, fontSize: 20, fontWeight: FontWeight.w600)),
                            WidgetSpan(child: Icon(Icons.remove, color: Colors.red, size: 20,))
                          ]
                        )
                      ),
                      Text("${CurrencyFormat.convertToIdr(widget.pengeluaranNow, 2)}", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
                    ]
                  ),
                ],
              )
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          decoration: BoxDecoration(
            color: tabColor,
            border: Border.all(
              color: borderColor,
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
