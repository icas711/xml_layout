import 'package:flutter/material.dart';
import 'menu.dart';
import 'component_table.dart';
import 'item.dart';
import 'page.dart';
import 'root.dart';
import 'style_element.dart';
import 'source_table.dart';
import 'source_variable.dart';

class StylePageMenu extends ComponentAndSourceMenu {
  StylePageMenu(super.layoutModel, super.target, {super.onChanged});

  @override
  List<PopupMenuEntry<Item>> getComponentMenu(void Function(Item)? onChanged) {
    var pageCount = layoutModel.root.items
        .where((element) => element.runtimeType == SourcePage)
        .length;

    return [

      PopupMenuItem(
        child: Text("Добавить стиль"),
        onTap: () {

          var item = StyleElement("стиль");
          layoutModel.addItem(target, item);
          onChanged!(item);

        },
      )

    ];
  }
}
