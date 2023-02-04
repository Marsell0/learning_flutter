import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget{
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Column(
        children: [
          Container(
            width: 100,
            height: 100,
            child: const Placeholder()),
          const Text('text'),
        ],
      ),
    );
  }
}