import 'package:flutter/material.dart';

class StatefulWidgetSample extends StatefulWidget {
  const StatefulWidgetSample({super.key});

  @override
  State<StatefulWidgetSample> createState() => _StatefulWidgetSampleState();
}

class _StatefulWidgetSampleState extends State<StatefulWidgetSample> {
  var i = 10;

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
