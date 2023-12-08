import 'package:flutter/material.dart';

class GeniePage extends StatefulWidget {
  const GeniePage({super.key});

  @override
  State<GeniePage> createState() => _GeniePageState();
}

class _GeniePageState extends State<GeniePage> {
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
