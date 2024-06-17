import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SingView extends StatefulWidget {
  const SingView({super.key});

  @override
  State<SingView> createState() => _SingViewState();
}

class _SingViewState extends State<SingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Sings')),
    );
  }
}
