import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_samples/provider/user_provider.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.cyan,
        title: Text('Settings screen'),
      ),
      body: Column(
        children: [
          TextFormField(
            controller: controller,
            decoration: InputDecoration(
              hintText: 'Enter your name'
            ),

          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.cyan),
            onPressed: () {
              context.read<UserProvider>().changeUsername(newName: controller.text);
              controller.clear();
            },
            child: Text('Save'),
          ),
        ],
      ),
    );
  }
}
