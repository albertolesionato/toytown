import 'package:flutter/material.dart';

class FutureTest extends StatefulWidget {
  const FutureTest({Key? key}) : super(key: key);

  @override
  State<FutureTest> createState() => _FutureTestState();
}

class _FutureTestState extends State<FutureTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder(
          future: Future.delayed(
              const Duration(milliseconds: 200), () => print('future')),
          builder: (context, snapshot) {
            print('built');
            return ElevatedButton(
                onPressed: () {
                  setState(() {});
                },
                child: const Text('Refresh'));
          },
        ),
      ),
    );
  }
}
