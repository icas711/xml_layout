import 'package:flutter/widgets.dart';
import 'component.dart';
import 'component_table.dart';
import 'source.dart';
import 'style_element.dart';
import 'style_element_widget.dart';
import 'source_table.dart';
import 'source_table_widget.dart';
import 'source_variable.dart';
import 'source_variable_widget.dart';

import 'component_table_widget.dart';

class SourceWidget extends StatelessWidget {
  final LayoutSource source;

  SourceWidget(this.source);

  factory SourceWidget.create(LayoutSource source) {
    switch (source.runtimeType) {
      case SourceVariable:
        return SourceVariableWidget(source as SourceVariable);
      case SourceTable:
        return SourceTableWidget(source as SourceTable);

      default:
        return SourceWidget(source);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: buildWidget(context),
    );
  }

  Widget buildWidget(BuildContext context) {
    return Text(source.type);
  }
}
