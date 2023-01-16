import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  final String title;
  final String text;
  const Page2({super.key, required this.title, required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            Text(text),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
