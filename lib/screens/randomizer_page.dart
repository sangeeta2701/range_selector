import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:range_number/main.dart';

class RandomizerPage extends ConsumerWidget {
  const RandomizerPage({
    Key? key,
  }) : super(key: key);
  // final randomGenerator = Random();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
   final redomizer =  ref.watch(randomizerProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text("Randomizer"),
      ),
      body: Center(child: Text(
            redomizer .generatedNumber?.toString() ?? "Generate a number",
            style: TextStyle(fontSize: 42),
          ),),
      floatingActionButton: FloatingActionButton.extended(
          label: Text("Generate"),
          onPressed: () {
            ref.read(randomizerProvider).generatedRandomNumber();
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
