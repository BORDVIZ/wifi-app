import 'package:flutter/material.dart';
import 'package:wifi_app/widgets/home_page/speed_chart.dart';
import 'package:wifi_app/widgets/home_page/custom_app_bar.dart';
import 'package:wifi_app/widgets/home_page/wifi_picture.dart';
import 'package:wifi_app/widgets/home_page/wifi_state.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: const [
            CustomAppBar(),
            WifiPicture(),
            WifiState(),
            SpeedChart(),
          ],
        ),
      ),
    );
  }
}
