import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget{
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const _UserInfo(),
          ],
        ),
      ),
    );
  }
}

class _UserInfo extends StatelessWidget {
  const _UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
              const SizedBox(height: 30),
              const _UserAvatarWidget(),
              const SizedBox(height: 20),
              const _UserFullNameWidget(),
              const SizedBox(height: 10),
              const _UserPhoneWidget(),
              const SizedBox(height: 10),
              const _UserNicknameWidget(),
        ]
      ),
    );
  }
}

class _UserNicknameWidget extends StatelessWidget {
  const _UserNicknameWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('@Ello',
    style: TextStyle(
      color: Colors.grey
    ),);
  }
}

class _UserPhoneWidget extends StatelessWidget {
  const _UserPhoneWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('+7(123) 456 78 90', 
    style: TextStyle(
      fontSize: 20,
    ),);
  }
}

class _UserFullNameWidget extends StatelessWidget {
  const _UserFullNameWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('Mars <Ello> Sram', 
    style: TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.bold,
    ),);
  }
}

class _UserAvatarWidget extends StatelessWidget {
  const _UserAvatarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      child: const Placeholder());
  }
}