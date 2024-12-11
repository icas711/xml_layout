import 'package:flutter/material.dart';
import 'component_widget.dart';
import 'slider_button/slider_button.dart';

class FormRadioWidget extends ComponentWidget {
  const FormRadioWidget(super.component, super.layoutModel, {super.key});

  @override
  Widget buildWidget(BuildContext context) {
    return SliderButton(width: component['size'].width, height: component['size'].height,);
  }
}
