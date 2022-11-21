import 'package:flutter/material.dart';
import 'package:wifi_app/widgets/statistic_page/speed_stat.dart';
import 'package:wifi_app/widgets/statistic_page/speedometer.dart';
import 'package:wifi_app/widgets/statistic_page/statistic_app_bar.dart';
import 'package:wifi_app/widgets/statistic_page/usage_statistic.dart';

class StatisticPage extends StatelessWidget {
  const StatisticPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column( 
            children: const [
              StatisticAppBar(),
              Speedometer(),
              SpeedStat(),
              UsageStatistic()
            ], 
          ),
        ),
      );
  }
}