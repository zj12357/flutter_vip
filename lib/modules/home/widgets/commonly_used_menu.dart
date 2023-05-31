import 'package:flutter/cupertino.dart';

import '../../../shared/styles/text_style.dart';

class CommonlyUsedMenu extends StatefulWidget {
  const CommonlyUsedMenu({Key? key}) : super(key: key);

  @override
  _CommonlyUsedMenuState createState() => _CommonlyUsedMenuState();
}

class _CommonlyUsedMenuState extends State<CommonlyUsedMenu> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Image(
          image: AssetImage('assets/images/icon/transfer_icon.png'),
          width: 33,
          height: 32,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'OK111',
          style: TextStyle(fontSize: 16, color: TextStyles.whiteColor),
        ),
      ],
    );
  }
}

class CommonlyUsedMenuItem extends StatelessWidget {
  const CommonlyUsedMenuItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Image(image: AssetImage('/assets/images/icon/transfer_icon.png')),
        SizedBox(
          height: 10,
        ),
        Text(
          'OK111',
          style: TextStyle(fontSize: 16, color: TextStyles.whiteColor),
        ),
      ],
    );
  }
}
