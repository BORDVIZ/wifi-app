import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wifi_app/constants/colors.dart';

class SpeedStat extends StatelessWidget {
  const SpeedStat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 91),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            'assets/svg/speed_icon.svg',
            width: 40,
          ),
          Column(
            children: [
              Text('42 Mps',
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w700)),
              Text('Download',
                  style: GoogleFonts.poppins(
                    color: CustomColors.lightGray,
                    fontSize: 12,
                  )),
            ],
          ),
          Column(
            children: [
              Text('12 Mps',
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w700)),
              Text('Upload',
                  style: GoogleFonts.poppins(
                    color: CustomColors.lightGray,
                    fontSize: 12,
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
