import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../widgets/reusable_card.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late List<String> imageurls = [
    "Assets/images/product.jpg",
    "Assets/images/tap.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselSlider.builder(
              itemCount: imageurls.length,
              itemBuilder:
                  (BuildContext context, int itemIndex, int pageViewIndex) =>
                      Container(
                margin: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage(imageurls[itemIndex]),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              //Slider Container properties
              options: CarouselOptions(
                height: 180.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
            ),
            SizedBox(
              height: size.height * 0.001,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Account Details",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Container(
                height: size.height*0.2,
                width: size.width * 0.88,
                // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 100),
                decoration: BoxDecoration(
                  color: Colors.blue[200],
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                )),
            SizedBox(
              height: size.height * 0.05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Actions",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                          child: ReusableCard(
                        cardColor: Colors.transparent,
                        cardIcon: Icons.balance,
                        label: "Airtime",
                        tap: () {
                          // Navigator.pushAndRemoveUntil(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => BanksPage()),
                          //     (route) => true);
                        },
                      )),
                      Expanded(
                          child: ReusableCard(
                        cardColor: Colors.transparent,
                        cardIcon: Icons.signal_wifi_statusbar_null_outlined,
                        label: "Data",
                        tap: () {
                          // createAlert(context);
                        },
                      )),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: ReusableCard(
                          cardColor: Colors.transparent,
                          cardIcon: Icons.record_voice_over,
                          label: "Voice Bundles",
                          tap: () {
                            // Navigator.pushAndRemoveUntil(
                            //     context,
                            //     MaterialPageRoute(
                            //       builder: (context) => HomeEvents(),
                            //     ),
                            //     (route) => true);
                          },
                        ),
                      ),
                      Expanded(
                          child: ReusableCard(
                        cardColor: Colors.transparent,
                        cardIcon: Icons.people,
                        label: "Refer & Earn",
                        tap: () {
                          // Navigator.pushAndRemoveUntil(
                          //     context,
                          //     MaterialPageRoute(
                          //       builder: (context) => HospitalsPage(),
                          //     ),
                          //     (route) => true);
                        },
                      ))
                    ],
                  ),
                ),
              ],
            ),
            // Row(
            //   children: [
            //     Expanded(
            //       child: Row(
            //         children: [
            //           Expanded(
            //               child: ReusableCard(
            //             cardColor: cardColor,
            //             cardIcon: Icons.school,
            //             label: "School",
            //             tap: () {},
            //           )),
            //           Expanded(
            //               child: ReusableCard(
            //             cardColor: cardColor,
            //             cardIcon: Icons.security_rounded,
            //             label: "Government",
            //             tap: () {},
            //           )),
            //         ],
            //       ),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
