import 'package:flutter/material.dart';
import 'package:e_sim/theme.dart';

class BerandaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: whiteColor,
        body: ListView(
          children: [
            SizedBox(height: 25),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'e-SIM',
                    style: blackTextStyle.copyWith(
                        fontSize: 16, fontWeight: FontWeight.w800),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Lihat Semua',
                      style: brownTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 13),
            Container(
              height: 140,
              // width: 160,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(width: edge),
                  Image.asset('assets/sim.png'),
                  SizedBox(width: edge),
                  Image.asset('assets/sim.png'),
                  SizedBox(width: edge),
                ],
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'My e-STNK',
                    style: blackTextStyle.copyWith(
                        fontSize: 16, fontWeight: FontWeight.w800),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Lihat Semua',
                      style: brownTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 13),
            Container(
              height: 140,
              // width: 160,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(width: edge),
                  Image.asset('assets/stnk.png'),
                  SizedBox(width: edge),
                  Image.asset('assets/stnk.png'),
                  SizedBox(width: edge),
                ],
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Riwayat Terakhir',
                    style: blackTextStyle.copyWith(
                        fontSize: 16, fontWeight: FontWeight.w800),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Lihat Semua',
                      style: brownTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 13),
            Container(
              height: 320,
              // width: 160,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(width: edge),
                  Image.asset('assets/tilang.png'),
                ],
              ),
            ),
            SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
