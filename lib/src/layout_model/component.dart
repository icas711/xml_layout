import 'dart:ui';

import 'package:flutter/widgets.dart';

import 'component_and_source.dart';
import 'property.dart';
import 'style.dart';

class LayoutComponent extends LayoutComponentAndSource {
  LayoutComponent(super.type, super.name) {
    properties["position"] = Property("положение", Offset(0, 0), type: Offset);
    properties["size"] = Property("размер", Size(360, 30), type: Size);
    properties["style"] = Property("стиль", Style.basic, type: Style);
  }
}
