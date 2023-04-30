import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:range_number/main.dart';
import 'package:range_number/widget/rangeSelectorTextField.dart';

class RangeSelectorForm extends ConsumerWidget {
  const RangeSelectorForm(
      {super.key,
      required this.formKey,
     });

  final GlobalKey<FormState> formKey;
  

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RangeSelectorTextFormField(
              lableText: "Minimum",
              intValueSetter: (value)=> ref.read(randomizerProvider).min = value,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: RangeSelectorTextFormField(
                lableText: "Maximum",
                intValueSetter: (value)=> ref.read(randomizerProvider).max = value,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
