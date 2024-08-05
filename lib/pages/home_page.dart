import 'package:flash_sniper/pages/crypto_page.dart';
import 'package:flash_sniper/pages/settings_page.dart';
import 'package:flash_sniper/pages/stock_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Flash Sniper"),
          bottom: const TabBar(
              labelPadding: EdgeInsets.symmetric(vertical: 5),
              labelStyle: TextStyle(
                  fontWeight: FontWeight.w800,
                  color: Color.fromARGB(255, 111, 25, 126)),
              unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w400),
              tabs: [
                Tab(
                  text: "STOCKS",
                ),
                Tab(
                  text: "CRYPTOS",
                ),
                Tab(
                  text: "SETTINGS",
                ),
              ]),
        ),
        body: TabBarView(children: [
          StockPage(),
          CryptoPage(),
          const SettingsPage(),
        ]),
      ),
    );
  }
}
