import 'package:flutter/material.dart';
import 'component_widget.dart';

class FormRadioWidget extends ComponentWidget {
  const FormRadioWidget(super.component, super.layoutModel,);

  @override
  Widget buildWidget(BuildContext context) {
    return const Radio(value: true, onChanged: null, groupValue: true,);
  }
}