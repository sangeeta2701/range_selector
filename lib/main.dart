import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:range_number/randomizer_change_notifier.dart';
import 'package:range_number/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

final randomizerProvider = ChangeNotifierProvider(
  (ref) => RandomizerChangeNotifier(),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Rendomizer',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage(),
      ),
    );
  }
}
