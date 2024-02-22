import 'package:flutter/material.dart';
import 'package:stackof/widget_size.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MyWidget(),
      ),
    );
  }
}
