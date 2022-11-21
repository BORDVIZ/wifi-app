import 'package:flutter/material.dart';

class WifiPicture extends StatelessWidget {
  const WifiPicture({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Image.asset('assets/images/routers.png'),
    );
  }
}
