import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {

  static const name = 'progress_screen';

  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progress Indicator'),

      ),
      body: _ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {


  const _ProgressView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox();
  }
}