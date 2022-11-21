import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wifi_app/constants/colors.dart';

class WifiState extends StatefulWidget {
  const WifiState({
    Key? key,
  }) : super(key: key);

  @override
  State<WifiState> createState() => _WifiStateState();
}

bool switchState = true;

class _WifiStateState extends State<WifiState> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Tp-Link',
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 8),
              Text(
                'Password: 2154f@4',
                style: GoogleFonts.poppins(
                  color: CustomColors.lightGray,
                  fontSize: 14,
                ),
              )
            ],
          ),
          CupertinoSwitch(
              value: switchState,
              activeColor: CustomColors.gray,
              trackColor: Colors.green.shade600,
              onChanged: (value) {
                setState(() {
                  switchState = value;
                });
              })
        ],
      ),
    );
  }
}