import 'package:flutter/material.dart';

class InstamartPage extends StatefulWidget {
  const InstamartPage({super.key});

  @override
  State<InstamartPage> createState() => _InstamartPageState();
}

class _InstamartPageState extends State<InstamartPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      body:  Card(
        shadowColor: Colors.transparent,
        margin: const EdgeInsets.all(8.0),
        child: SizedBox.expand(
          child: Center(
            child: Text(
              'Home page',
              style: theme.textTheme.titleLarge,
            ),
          ),
        ),
      ),
    );
  }
}
