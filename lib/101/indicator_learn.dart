import 'package:flutter/material.dart';

class IndicatorLearn extends StatelessWidget {
  const IndicatorLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Center(
            child: CircularProgressIndicator(),
          )
        ],
      ),
      body: const Center(
        child: CircularProgressIndicator(
          color: Colors.red,
          strokeWidth: 10,
          value: 0.9,
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
