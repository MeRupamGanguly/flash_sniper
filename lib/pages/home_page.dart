import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _slController = TextEditingController();
  final TextEditingController _targetController = TextEditingController();

  void _getPosition() {}
  void _exit() {}
  void _refresh() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flash Sniper"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _slController,
                    decoration: const InputDecoration(
                      labelText: 'Enter % of SL',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
                Expanded(
                  child: TextField(
                    controller: _targetController,
                    decoration: const InputDecoration(
                      labelText: 'Enter % of Target',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: _getPosition,
                  child: const Text('Get Position'),
                ),
                ElevatedButton(
                  onPressed: _refresh,
                  style: ElevatedButton.styleFrom(),
                  child: const Text('Refresh'),
                ),
                ElevatedButton(
                  onPressed: _exit,
                  style: ElevatedButton.styleFrom(),
                  child: const Text('Exit'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
