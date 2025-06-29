import 'package:flutter/material.dart';

class RedCellsPage extends StatelessWidget {
  const RedCellsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 236, 244, 147),
      appBar: AppBar(
        title: const Text('Hemácias/Eritrócitos'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Text(
              'Atenção, Não utilizar como resultado final, utilize apenas como consulta.',
              style: TextStyle(fontSize: 20, color: Colors.redAccent),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
