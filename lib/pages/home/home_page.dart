import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: FilledButton(
          onPressed: () {
            context.push('/setting/account');
          },
          child: const Text('Go to Account Settings'),
        ),
      ),
    );
  }
}
