import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wifi_app/constants/colors.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 7),
            child: SvgPicture.asset('assets/svg/menu.svg'),
          ),
          Column(
            children: [
              Text('My Routers',
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700)),
              Text('Total:8',
                  style: GoogleFonts.poppins(
                    color: CustomColors.lightGray,
                    fontSize: 14,
                  )),
            ],
          ),
          SvgPicture.asset('assets/svg/notifications.svg')
        ],
      ),
    );
  }
}
