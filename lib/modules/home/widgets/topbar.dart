import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vip_app/shared/styles/background_style.dart';
import 'package:vip_app/shared/widgets/qr_scanner.dart';
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
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      color: BackgroundStyles.primaryBackground,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Avatar(),
          Row(
            children: [
              ScanCode(),
              SizedBox(width: 8),
              Message(),
            ],
          )
        ],
      ),
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
        const SizedBox(width: 8),
        const Text(
          'OK111',
          style: TextStyle(fontSize: 14, color: TextStyles.whiteColor),
        ),
      ],
    );
  }
}

//扫描
class ScanCode extends StatefulWidget {
  const ScanCode({Key? key}) : super(key: key);

  @override
  _ScanCodeState createState() => _ScanCodeState();
}

class _ScanCodeState extends State<ScanCode> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('Image tapped!');
        Get.to(const QrScanner()); //跳转到扫码页面
      },
      child: Image.asset(
        'assets/images/icon/scan_code_icon.png',
        width: 20,
      ),
    );
  }
}

// 消息
class Message extends StatelessWidget {
  const Message({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('Image tapped!');
      },
      child: Image.asset(
        'assets/images/icon/message_icon.png',
        width: 20,
      ),
    );
  }
}
