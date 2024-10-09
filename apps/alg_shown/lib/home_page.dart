import 'package:alg_shown/test.dart';
import 'package:flutter/material.dart';
import 'package:widget_view/widget_view.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({super.key, required this.title});

    @override
    State<HomePage> createState() => _HomePageCtrl();
}
class _HomePageCtrl extends State<HomePage> {
  @override
  Widget build(BuildContext context) => _HomePageView(this);

  int _count = 0;

  int get count => _count;

  void increase() {
    setState(() {
      _count++;
    });
  }

}
class _HomePageView extends StateView<HomePage, _HomePageCtrl>{
   const _HomePageView(super.state, {super.key});
    
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '${state.count}',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const MyWidget(text: 'abdddc',)
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: state.increase,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      );
    }
}