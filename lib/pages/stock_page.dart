import 'package:flutter/material.dart';

class StockPage extends StatelessWidget {
  StockPage({super.key});
  final TextEditingController _slController = TextEditingController();
  final TextEditingController _targetController = TextEditingController();

  void _getPosition() {}
  void _exit() {}
  void _refresh() {}
  @override
  Widget build(BuildContext context) {
    return Column(
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
              const SizedBox(
                width: 10,
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: _getPosition,
                child: const Text('Get Position'),
              ),
              const SizedBox(
                width: 10,
              ),
              ElevatedButton(
                onPressed: _refresh,
                style: ElevatedButton.styleFrom(),
                child: const Text('Refresh'),
              ),
              const SizedBox(
                width: 10,
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
    );
  }
}
