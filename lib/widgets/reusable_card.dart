import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color cardColor;
  final IconData cardIcon;
  final String label;
  final VoidCallback tap;
  const ReusableCard(
      {Key? key,
      required this.cardColor,
      required this.cardIcon,
      required this.label,
      required this.tap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      child: SizedBox(
        height: size.height * 0.2,
        width: size.width * 0.2,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: size.height * 0.13,
                width: size.width * 0.25,
                decoration: BoxDecoration(
                    color: cardColor,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30))),
                child: Padding(
                  // padding: EdgeInsets.all(size.width * 0.26),
                  padding: EdgeInsets.only(
                      top: size.height * 0.01,
                      bottom: size.height * 0.02,
                      left: size.width * 0.01,
                      right: size.width * 0.01),
                  child: Icon(
                    cardIcon,
                    size: size.height * 0.1,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Center(
                child: Text(
              label,
              style: const TextStyle(
                  fontSize: 11.5,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 31, 56)),
            ))
          ],
        ),
      ),
      onTap: tap,
    );
  }
}
