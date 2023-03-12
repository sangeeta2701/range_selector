import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: RangeSelectorTextFormField(lableText: "Maximum"),
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

class RangeSelectorTextFormField extends StatelessWidget {
  RangeSelectorTextFormField({
    super.key,
    required this.lableText,
  });
  String lableText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.numberWithOptions(
        decimal: false,
        signed: true,
      ),
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: lableText,
      ),
    );
  }
}
