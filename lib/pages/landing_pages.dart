import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget navItem({required String title, required int index}) {
      return InkWell(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: GoogleFonts.poppins(
                fontSize: 18,
                color: Color(0xff1D1E3C),
                fontWeight:
                    index == selectedIndex ? FontWeight.w500 : FontWeight.w300,
              ),
            ),
            Container(
              height: 2,
              width: 66,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: index == selectedIndex
                    ? Color(0xffFE998D)
                    : Colors.transparent,
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          'images/bg_landing.png',
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          fit: BoxFit.fill,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 100,
            vertical: 30,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'images/logo.png',
                    width: 40,
                    height: 72,
                  ),
                  Row(
                    children: [
                      navItem(
                        title: 'Guide',
                        index: 0,
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      navItem(
                        title: 'Pricing',
                        index: 1,
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      navItem(
                        title: 'Team',
                        index: 2,
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      navItem(
                        title: 'Stories',
                        index: 3,
                      ),
                    ],
                  ),
                  Image.asset(
                    'images/btn_account.png',
                    width: 163,
                    height: 53,
                  ),
                ],
              ),
              SizedBox(
                height: 75,
              ),
              Image.asset(
                'images/illustration.png',
                height: 450,
              ),
              SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/Icon_down_solid.png',
                    width: 24,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    'Scroll to Learn More',
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    ));
  }
}
