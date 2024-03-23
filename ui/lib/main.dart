import 'package:flutter/material.dart';

void main() {
  runApp(const Savory());
}

class Savory extends StatelessWidget {
  const Savory({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const SavoryHomePage(title: 'Savory'),
    );
  }
}

class SavoryHomePage extends StatefulWidget {
  const SavoryHomePage({super.key, required this.title});

  final String title;

  @override
  State<SavoryHomePage> createState() => _SavoryHomePageState();
}

class _SavoryHomePageState extends State<SavoryHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Center(child: Text(widget.title)),
      ),
      body: Container(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.chat_bubble),
        onPressed: () => throw UnimplementedError(),
      ),
    );
  }
}
