import 'package:flutter/material.dart';

class PlansSelectedViewBody extends StatefulWidget {
  const PlansSelectedViewBody({super.key});

  @override
  State<PlansSelectedViewBody> createState() => _PlansSelectedViewBodyState();
}

class _PlansSelectedViewBodyState extends State<PlansSelectedViewBody> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text('Plans Selected View')
      ],
    );
  }
}
