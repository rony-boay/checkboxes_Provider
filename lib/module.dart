import 'package:checkboxes/statemg.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CheckBoxShow extends StatelessWidget {
  const CheckBoxShow({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Logic>(
      builder: (context, noprovider, _) => ListView.builder(
        itemCount: noprovider.taskname.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(noprovider.taskname[index][0]),
          trailing: Checkbox(
              value: noprovider.taskname[index][2],
              onChanged: (newChecked) {
                noprovider.changechecked(index, newChecked ?? false);
              }),
        ),
      ),
    );
  }
}
