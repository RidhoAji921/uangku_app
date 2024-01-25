import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uangku_app/pages/home.dart';
import 'package:uangku_app/pages/riwayat.dart';
import 'package:uangku_app/pages/pengaturan.dart';
import 'package:uangku_app/providers/provider_uang.dart';
import 'package:uangku_app/providers/provider_theme.dart';
import 'classes/uang.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  MyApp({super.key});
  final Uang uang = Uang(uang: 0, pengeluaran: 0, pemasukan: 0);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => UangBloc(uang)),
        BlocProvider(create: (context) => DarkTheme()),
      ],
      child: BlocBuilder<DarkTheme, bool>(
        builder: (context, isDark) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 153, 215, 153)),
            ),
            darkTheme: ThemeData(
              brightness: Brightness.dark,
              colorScheme: ColorScheme.dark().copyWith(primary: Color.fromARGB(255, 178, 235, 178))
            ),
            themeMode: isDark? ThemeMode.dark : ThemeMode.light,
            home: const MyHomePage(title: 'uangku'),
          );
        }
      ),
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
            indicatorColor: Color.fromARGB(255, 73, 168, 73),
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
      ),
    );
  }
}
