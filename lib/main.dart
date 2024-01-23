import 'package:flutter/material.dart';
import 'package:uangku_app/pages/home.dart';
import 'package:uangku_app/pages/riwayat.dart';
import 'package:uangku_app/pages/pengaturan.dart';
import 'classes/uang.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 153, 215, 153)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'uangku'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Uang uang = Uang(uang: 0);

  List<Tab> tabs = [
    const Tab(
      icon: Icon(Icons.home),
      child: Text("home"),
    ),
    const Tab(
      icon: Icon(Icons.view_list_outlined),
      child: Text("riwayat"),
    ),
    const Tab(
      icon: Icon(Icons.settings),
      child: Text("pengaturan"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title, style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          bottom: TabBar(
            indicatorColor: Color.fromARGB(255, 73, 168, 73),
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 3,
            tabs: tabs,
          )
        ),
        body: TabBarView(
          children: [
            HomeBodyPage(uang: uang),
            RiwayatBodyPage(),
            PengaturanPageBody(),
          ]
        ),
      ),
    );
  }
}
