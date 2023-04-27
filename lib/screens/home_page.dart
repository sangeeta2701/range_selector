import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:range_number/screens/randomizer_page.dart';

import '../widget/rangeSelectorForm.dart';

class HomePage extends HookWidget {
  HomePage({Key? key}) : super(key: key);
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final min = useState<int>(0);
    final max = useState<int>(0);
    return Scaffold(
      appBar: AppBar(
        title: Text("Select Range"),
      ),
      body: RangeSelectorForm(
        formKey: formKey,
        minValueSetter: (int value) {
          min.value = value;
        },
        maxValueSetter: (int value) {
          max.value = value;
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (formKey.currentState!.validate() == true) {
            formKey.currentState!.save();
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => RandomizerPage(
                      min: min.value,
                      max: max.value,
                    )));
          }
        },
        child: Icon(Icons.arrow_forward),
      ),
    );
  }
}

// class _HomePageState extends State<HomePage> {
//   int _min = 0;
//   int _max = 0;
  

  
// }
