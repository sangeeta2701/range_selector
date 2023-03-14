import 'package:flutter/material.dart';

import '../widget/rangeSelectorForm.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _min = 0;
  int _max = 0;
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Select Range"),
      ),
      body: RangeSelectorForm(
        formKey: formKey,
        minValueSetter: (int value) {
          _min = value;
        },
        maxValueSetter: (int value) {
          _max = value;
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (formKey.currentState!.validate() == true) {
            formKey.currentState!.save();
          }
        },
        child: Icon(Icons.arrow_forward),
      ),
    );
  }
}
