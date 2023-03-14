import 'package:flutter/material.dart';

typedef IntValueSetter = void Function(int value);

class RangeSelectorTextFormField extends StatelessWidget {
  RangeSelectorTextFormField({
    super.key,
    required this.lableText,
    required this.intValueSetter,
  });
  String lableText;
  final IntValueSetter intValueSetter;
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
      validator: (value) {
        if (value == null || int.tryParse(value) == null) {
          return "Must be an integer";
        } else {
          return null;
        }
      },
    );
  }
}
