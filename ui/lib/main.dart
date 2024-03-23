import 'package:flutter/material.dart';
import 'package:ui/components/avatar_leading.dart';
import 'package:ui/toasts/toasts.dart';

void main() {
  runApp(const Savory());
}

class Savory extends StatelessWidget {
  const Savory({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Savory',
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
        title: Text(widget.title),
        leading: const AvatarLeading(icon: "https://www.viiper.fr/logo.jpg"),
      ),
      body: const Scaffold(
        backgroundColor: Colors.black87,
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.create),
        onPressed: () => showSuccessToast(
            context, 'Recipe writing', 'Recipe writing isn\'t implemented yet'),
      ),
    );
  }
}
