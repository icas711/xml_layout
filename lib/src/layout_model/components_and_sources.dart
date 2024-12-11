import 'canvas/main_canvas.dart';
import 'package:flutter/material.dart';
import 'layout_model.dart';
import 'page.dart';
import 'style.dart';
import 'style_widget.dart';

class ComponentsAndSources extends StatelessWidget {
  final ComponentAndSourcePage curPage;
  final LayoutModel layoutModel;
final BoxConstraints constraints;
  const ComponentsAndSources(this.curPage, this.layoutModel, this.constraints, {super.key});

  @override
  Widget build(BuildContext context) {
      if (curPage is StylePage) {
        return Column(
          children: List.generate(
            curPage.items.length, //widget._items.length,
            (index) =>
                StyleWidget.create(curPage.items[index] as LayoutStyle),
          ),
        );
      } else if (curPage is ComponentPage) {
        return curPage.items.isNotEmpty
            ? MainCanvas(
                items: curPage.items,
                constraints: constraints,
                layoutModel: layoutModel,
              )
            : Container();
      } else {
        final curPage = layoutModel.root.items.first;
        return MainCanvas(
          items: curPage.items,
          constraints: constraints,
          layoutModel: layoutModel,
        );
      }

    /*  if (widget._curPage is ComponentPage) {
          return widget._curPage.items.isNotEmpty?
           MainCanvas(items: widget._curPage.items,):Container();
        } else if (widget._curPage is SourcePage) {
          return Column(
            children: List.generate(
              widget._curPage.items.length, //widget._items.length,
              (index) => SourceWidget.create(
                  widget._curPage.items[index] as LayoutSource),
            ),
          );
        } else {
          return Column(
            children: List.generate(
              widget._curPage.items.length, //widget._items.length,
              (index) => StyleWidget.create(
                  widget._curPage.items[index] as LayoutStyle),
            ),
          );
        }*/
  }

/* List<Widget> componentsList(BoxConstraints constraints) {
    List<Widget> componentsItems = [];
    double incrementHeight = 12;
    if (widget._curPage.items.isNotEmpty) {
      incrementHeight = widget._curPage.items.last["position"].dy +
          widget._curPage.items.last["size"].height +
          12;
    }
    componentsItems
      ..add(Container(height: incrementHeight))
      ..addAll(List.generate(
        widget._curPage.items.length, //widget._items.length,
        (index) => Positioned(
          left: (widget._curPage.items[index]["position"].dx / 360) *
              constraints.maxWidth,
          top: widget._curPage.items[index]["position"].dy,
          width: (widget._curPage.items[index]["size"].width / 360) *
              constraints.maxWidth,
          height: widget._curPage.items[index]["size"].height,
          child: ComponentWidget.create(
              widget._curPage.items[index] as LayoutComponent),
        ),
      ));
    return componentsItems;
  }*/
}
