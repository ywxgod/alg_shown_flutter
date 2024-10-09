library widget_view;

import 'package:flutter/material.dart';

abstract class StateView<W extends Widget, S extends State> extends StatelessWidget {

  final S state;

  const StateView(this.state, {super.key});

  W get widget => (state as State).widget as W;

  @override
  Widget build(BuildContext context);
}

abstract class StatelessView<W extends Widget> extends StatelessWidget {
  final W widget;

  const StatelessView(this.widget, {super.key});

  @override
  Widget build(BuildContext context);
}