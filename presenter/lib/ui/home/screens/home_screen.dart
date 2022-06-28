import 'package:flutter/cupertino.dart';

import '../../../dependencies/dependencies.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultScreen(
      body: Column(
        children: const [
          Text('ola'),
        ],
      ),
    );
  }
}
