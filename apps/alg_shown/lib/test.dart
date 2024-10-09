import 'package:flutter/material.dart';
import 'package:widget_view/widget_view.dart';

class MyWidget extends StatelessWidget {
  final String text;
  const MyWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) => _MyWidgetView(this);
}
class _MyWidgetView extends StatelessView<MyWidget> {
  const _MyWidgetView(super.widget, {super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(widget.text),
    );
  }
}
