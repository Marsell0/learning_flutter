import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget{
  List<MenuRowData> menuRow =[
    MenuRowData(Icons.favorite, 'Избранное'),
    MenuRowData(Icons.call, 'Недавние звонки'),
    MenuRowData(Icons.computer, 'Устройства'),
    MenuRowData(Icons.folder, 'Папки с чатами'),
  ];
  UserProfile();

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
            _UserInfo(),
            SizedBox(height: 30),
            _MenuWidget(menuRow: menuRow)
          ],
        ),
      ),
    );
  }
}
class MenuRowData{
  final IconData icon;
  final String text;

  MenuRowData(this.icon, this.text);
}
class _MenuWidget extends StatelessWidget{
  final List<MenuRowData> menuRow;
  const _MenuWidget({super.key, required this.menuRow});

  @override 
  Widget build(BuildContext context){
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Column(
        children: menuRow.map((data) => _MenuWidgetRow(data: data)).toList()
      ),
    );
  }
}

class _MenuWidgetRow extends StatelessWidget{
  final MenuRowData data;
  _MenuWidgetRow({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Row(
              children: [
                Icon(data.icon),
                SizedBox(width: 15),
                Expanded(child: Text(data.text)),
                Icon(Icons.chevron_right)
              ],
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