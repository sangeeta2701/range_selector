import 'package:flutter/material.dart';
import 'package:range_number/widget/rangeSelectorTextField.dart';

class RangeSelectorForm extends StatelessWidget {
  const RangeSelectorForm(
      {super.key,
      required this.formKey,
      required this.minValueSetter,
      required this.maxValueSetter});

  final GlobalKey<FormState> formKey;
  final IntValueSetter minValueSetter;
  final IntValueSetter maxValueSetter;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RangeSelectorTextFormField(
              lableText: "Minimum",
              intValueSetter: minValueSetter,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: RangeSelectorTextFormField(
                lableText: "Maximum",
                intValueSetter: maxValueSetter,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
