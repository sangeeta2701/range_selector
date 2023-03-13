import 'package:flutter/material.dart';

import '../widget/rangeSelectorTextField.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _min = 0;
  int _max = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Select Range"),
      ),
      body: Form(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RangeSelectorTextFormField(
                lableText: "Minimum",
                intValueSetter: (value) => _min = value,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: RangeSelectorTextFormField(
                  lableText: "Maximum",
                  intValueSetter: (value) => _max = value,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.arrow_forward),
      ),
    );
  }
}
