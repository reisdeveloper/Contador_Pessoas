import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  void decrement() {
    setState(() {
      count--;
    });
  }

  void encrement() {
    setState(() {
      count++;
    });
  }

  bool get isEmpty => count == 0;
  bool get isFull => count == 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Contador Pessoas',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(color: Colors.blue),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              isFull ? 'Lotado!' : 'Pode Entrar!',
              style: TextStyle(
                color: isFull ? Colors.red : Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 45,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(40),
              child: Text(
                count.toString(),
                style: TextStyle(
                  color: isFull ? Colors.red : Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 105,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: isEmpty ? null : decrement,
                  style: TextButton.styleFrom(
                    fixedSize: const Size(100, 100),
                    foregroundColor: Colors.black,
                    backgroundColor:
                        isEmpty ? Colors.red.withOpacity(0.75) : Colors.white,
                    shape: const BeveledRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                  child: const Text('Saiu'),
                ),
                const SizedBox(
                  width: 40,
                ),
                TextButton(
                  onPressed: isFull ? null : encrement,
                  style: TextButton.styleFrom(
                    fixedSize: const Size(100, 100),
                    foregroundColor: Colors.black,
                    backgroundColor:
                        isFull ? Colors.red.withOpacity(0.75) : Colors.white,
                    shape: const BeveledRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                  child: const Text('Entrou'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
