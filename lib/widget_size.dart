import 'dart:developer';
import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  double? myColumnHeight, myColumnWidth;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // Access RenderBox after build
      final RenderBox renderBox = context.findRenderObject() as RenderBox;
      myColumnHeight = renderBox.size.height;
      myColumnWidth = renderBox.size.width;
      log('$myColumnHeight $myColumnWidth');
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text('Hello'),
      ],
    );
  }
}
