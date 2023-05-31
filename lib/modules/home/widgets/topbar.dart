import 'package:flutter/material.dart';
import 'package:vip_app/shared/styles/background_style.dart';
import '/shared/styles/text_style.dart';

class Topbar extends StatefulWidget implements PreferredSizeWidget {
  const Topbar({Key? key}) : super(key: key);

  @override
  _TopbarState createState() => _TopbarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _TopbarState extends State<Topbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      color: BackgroundStyles.primaryBackground,
      child: const Avatar(),
    );
  }
}

class Avatar extends StatelessWidget {
  const Avatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Image.network(
            "https://cdn.pixabay.com/photo/2023/02/28/03/42/ibex-7819817_640.jpg",
            width: 36,
            height: 36,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 10),
        const Text(
          'OK111',
          style: TextStyle(fontSize: 16, color: TextStyles.whiteColor),
        ),
      ],
    );
  }
}
