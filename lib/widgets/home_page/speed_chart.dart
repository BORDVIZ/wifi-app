import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wifi_app/constants/colors.dart';

class SpeedChart extends StatelessWidget {
  const SpeedChart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 166,
            decoration: BoxDecoration(
              color: CustomColors.gray,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12, right: 12, top: 20, bottom: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset('assets/svg/speed_icon.svg'),
                      Column(
                        children: [
                          Text('42 Mps',
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700)),
                          Text('Download',
                              style: GoogleFonts.poppins(
                                color: CustomColors.lightGray,
                                fontSize: 10,
                              )),
                        ],
                      ),
                      Column(
                        children: [
                          Text('+23%',
                              style: GoogleFonts.poppins(
                                  color: CustomColors.light,
                                  fontSize: 12,)),
                          SvgPicture.asset('assets/svg/arrow.svg'),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 37,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(image: AssetImage('assets/images/chart1.png'))
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 166,
            decoration: BoxDecoration(
              color: CustomColors.gray,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12, right: 12, top: 20, bottom: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset('assets/svg/speed_icon.svg'),
                      Column(
                        children: [
                          Text('12 Mps',
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700)),
                          Text('Upload',
                              style: GoogleFonts.poppins(
                                color: CustomColors.lightGray,
                                fontSize: 10,
                              )),
                        ],
                      ),
                      Column(
                        children: [
                          Text('+23%',
                              style: GoogleFonts.poppins(
                                  color: CustomColors.light,
                                  fontSize: 12,)),
                          SvgPicture.asset('assets/svg/arrow.svg'),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 41,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(image: AssetImage('assets/images/chart2.png'))
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}