import 'package:flutter/material.dart';

import '/shared/styles/background_style.dart';
import '/shared/styles/text_style.dart';

class NavItem {
  final String icon;
  final String label;
  NavItem({required this.icon, required this.label});
}

class CommonlyUsedMenu extends StatefulWidget {
  const CommonlyUsedMenu({Key? key}) : super(key: key);

  @override
  _CommonlyUsedMenuState createState() => _CommonlyUsedMenuState();
}

class _CommonlyUsedMenuState extends State<CommonlyUsedMenu> {
  final List<NavItem> menuList = [
    NavItem(icon: 'assets/images/icon/transfer_icon.png', label: '转账'),
    NavItem(
        icon: 'assets/images/icon/appointment_code_icon.png', label: '预约出码'),
    NavItem(
        icon: 'assets/images/icon/appointment_withdrawal_icon.png',
        label: '预约取款'),
    NavItem(icon: 'assets/images/icon/receipt_code_icon.png', label: '收款码'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        width: double.infinity,
        height: 75,
        decoration: BoxDecoration(
          color: BackgroundStyles.secondaryBackground.withOpacity(0.5),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            for (int index = 0; index < menuList.length; index++)
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(8),
                  child: CommonlyUsedMenuItem(menuItemProps: menuList[index]),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class CommonlyUsedMenuItem extends StatelessWidget {
  final NavItem menuItemProps;
  const CommonlyUsedMenuItem({Key? key, required this.menuItemProps})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          menuItemProps.icon,
          width: 32,
        ),
        const SizedBox(height: 4),
        Text(
          menuItemProps.label,
          style: const TextStyle(fontSize: 12, color: TextStyles.fontColor1),
        ),
      ],
    );
  }
}
