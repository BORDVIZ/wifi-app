import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wifi_app/constants/colors.dart';

class StatisticAppBar extends StatelessWidget {
  const StatisticAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Text('wifi Statistics',
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700)),
          Text('Tp-Link',
              style: GoogleFonts.poppins(
                color: CustomColors.lightGray,
                fontSize: 14,
              )),
        ],
      ),
    );
  }
}
