import 'package:flutter/material.dart';
import 'package:vip_app/modules/home/widgets/commonly_used_menu.dart';
import '/shared/styles/background_style.dart';
import '/modules/home/widgets/topbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: Topbar(),
      backgroundColor: BackgroundStyles.primaryBackground,
      body: Column(children: [CommonlyUsedMenu()]),
    );
  }
}
