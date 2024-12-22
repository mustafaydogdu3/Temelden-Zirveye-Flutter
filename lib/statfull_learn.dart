import 'package:flutter/material.dart';

class StatfullLearn extends StatefulWidget {
  const StatfullLearn({super.key});

  @override
  State<StatfullLearn> createState() => _StatfullLearn();
}

class _StatfullLearn extends State<StatfullLearn> {
  int _countValue = 0;

  void _updateCounter(bool isIncrement) {
    if (isIncrement) {
      _countValue += 1;
    } else {
      _countValue -= 1;
    }
    setState(() {});
  }

  // void incrementValue() {
  //   setState(() {
  //     countValue += 1;
  //   });
  // }

  // void deincrementValue() {
  //   setState(() {
  //     countValue -= 1;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [_incrementButton(), _deincrementButton()],
      ),
      body: Center(
          child: Text(_countValue.toString(),
              style: Theme.of(context).textTheme.headlineMedium)),
    );
  }

  FloatingActionButton _incrementButton() {
    return FloatingActionButton(
      onPressed: () {
        _updateCounter(true);
      },
      child: const Icon(Icons.add),
    );
  }

  Padding _deincrementButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: FloatingActionButton(
        onPressed: () {
          _updateCounter(false);
        },
        child: const Icon(Icons.remove),
      ),
    );
  }
}
