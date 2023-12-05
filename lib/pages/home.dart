import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_samples/pages/settings.dart';
import 'package:provider_samples/provider/user_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.cyan,
        title: Text('Home screen'),
      ),
      body:   Center(
        child: Text(
          context.watch<UserProvider>().username,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
