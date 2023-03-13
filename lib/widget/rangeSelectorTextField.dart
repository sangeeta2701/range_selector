import 'package:flutter/material.dart';

class RangeSelectorTextFormField extends StatelessWidget {
  RangeSelectorTextFormField({
    super.key,
    required this.lableText,
    required this.intValueSetter,
  });
  String lableText;
  final void Function(int value) intValueSetter;
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
      onSaved: (newValue) => intValueSetter(
        int.parse(newValue ?? ""),
      ),
    );
  }
}
