import 'package:flutter/material.dart';
import 'package:uangku_app/home.dart';
import 'package:uangku_app/riwayat.dart';
import 'package:uangku_app/pengaturan.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 222, 111, 43)),
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
            indicatorColor: Colors.deepOrange,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 3,
            tabs: tabs,
          )
        ),
        body: TabBarView(
          children: [
            HomeBodyPage(),
            RiwayatBodyPage(),
            PengaturanPageBody(),
          ]
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {print("Floating Action Button");},
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
