import 'package:flutter/material.dart';

class detail_screen extends StatelessWidget {
  const detail_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: <Widget>[
              const Text('detail Screen'),
              ElevatedButton(
                child: const Text("Go Back"),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
