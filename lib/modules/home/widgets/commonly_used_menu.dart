import 'package:flutter/cupertino.dart';

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
    NavItem(icon: 'assets/images/icon/transfer_icon.png', label: 'Home'),
    NavItem(icon: 'assets/images/icon/transfer_icon.png', label: 'Search'),
    NavItem(icon: 'assets/images/icon/transfer_icon.png', label: 'Favorites'),
    NavItem(icon: 'assets/images/icon/transfer_icon.png', label: 'Settings'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        color: BackgroundStyles.secondaryBackground.withOpacity(0.5),
        child: SizedBox(
          height: 75,
          width: double.infinity,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: menuList.length,
            itemBuilder: (context, index) {
              final item = menuList[index];
              return GestureDetector(
                onTap: () {
                  // 处理导航菜单项的点击事件
                  // 根据需要执行相应的导航操作
                  print('Tapped ${item.label}');
                },
                child: Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    child: CommonlyUsedMenuItem(menuItemProps: item),
                  ),
                ),
              );
            },
          ),
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
          style: const TextStyle(fontSize: 16, color: TextStyles.whiteColor),
        ),
      ],
    );
  }
}
