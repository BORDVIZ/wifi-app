import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wifi_app/constants/colors.dart';
import 'package:wifi_app/pages/home_page.dart';
import 'package:wifi_app/pages/statistic_page.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  State<InitialPage> createState() => _InitialPageState();
}

bool isHomePage = false;

class _InitialPageState extends State<InitialPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.background,
      body: Stack(
        children: [
          isHomePage ? const HomePage() : const StatisticPage(),
          Positioned(
            bottom: 45,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        if (!isHomePage) {
                          setState(() {
                            isHomePage = true;
                          });
                        }
                      },
                      child: Column(
                        children: [
                          SvgPicture.asset(
                            'assets/svg/Home.svg',
                            color: isHomePage
                                ? CustomColors.light
                                : CustomColors.lightGray,
                          ),
                          Text(
                            'Home',
                            style: GoogleFonts.poppins(
                                color: isHomePage
                                    ? CustomColors.light
                                    : CustomColors.lightGray,
                                fontSize: 9,
                                fontWeight: isHomePage
                                    ? FontWeight.w700
                                    : FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Column(
                        children: [
                          SvgPicture.asset(
                            'assets/svg/Search.svg',
                            color: CustomColors.lightGray,
                          ),
                          Text(
                            'Search',
                            style: GoogleFonts.poppins(
                              color: CustomColors.lightGray,
                              fontSize: 9,
                            ),
                          )
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (isHomePage) {
                          setState(() {
                            isHomePage = false;
                          });
                        }
                      },
                      child: Column(
                        children: [
                          SvgPicture.asset(
                            'assets/svg/Chart.svg',
                            color: !isHomePage
                                ? CustomColors.light
                                : CustomColors.lightGray,
                          ),
                          Text(
                            'Statistic',
                            style: GoogleFonts.poppins(
                                color: !isHomePage
                                    ? CustomColors.light
                                    : CustomColors.lightGray,
                                fontSize: 9,
                                fontWeight: !isHomePage
                                    ? FontWeight.w700
                                    : FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Column(
                        children: [
                          SvgPicture.asset(
                            'assets/svg/Profile.svg',
                            color: CustomColors.lightGray,
                          ),
                          Text(
                            'Profile',
                            style: GoogleFonts.poppins(
                              color: CustomColors.lightGray,
                              fontSize: 9,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
