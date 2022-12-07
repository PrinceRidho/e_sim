import 'package:flutter/material.dart';
import 'package:e_sim/pages/login_page.dart';
import 'package:e_sim/theme.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: edge),
            child: Column(
              children: [
                SizedBox(height: 26),
                Center(
                  child: Text(
                    'E-Card',
                    style: whiteTextStyle.copyWith(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(0.0, 5.0),
                          blurRadius: 4.0,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 120),
                Image.asset(
                  'assets/logo_esim.png',
                  width: 160,
                ),
                SizedBox(height: 250),
                Container(
                  width: MediaQuery.of(context).size.width - (2 * edge),
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: whiteColor,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(17),
                      ),
                    ),
                    child: Text(
                      'Explore Now',
                      style: brownTextStyle.copyWith(
                          fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
