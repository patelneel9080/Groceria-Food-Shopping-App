import 'package:flutter/material.dart';

class DineOutPage extends StatefulWidget {
  const DineOutPage({super.key});

  @override
  State<DineOutPage> createState() => _DineOutPageState();
}

class _DineOutPageState extends State<DineOutPage> {
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
