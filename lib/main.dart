import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kelipatan 5',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: KelipatanPage(),
    );
  }
}

class KelipatanPage extends StatefulWidget {
  @override
  _KelipatanPageState createState() => _KelipatanPageState();
}

class _KelipatanPageState extends State<KelipatanPage> {
  int currentNumber = 0;

  void generateNextNumber() {
    setState(() {
      if (currentNumber + 5 <= 30) {
        currentNumber += 5;
      } else {
        currentNumber = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Center(
          child: Text('9 - M Zidni Ilman N - Bilangan Kelipatan 5 - 30')
          ) 
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Kelipatan 5:',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue,
              ),
              child: Center(
                child: Text(
                  currentNumber.toString(),
                  style: TextStyle(fontSize: 48, color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => generateNextNumber(),
              child: Text('Selanjutnya'),
            ),
          ],
        ),
      ),
    );
  }
}
