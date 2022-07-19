import 'package:flutter/material.dart';

import '../constants.dart';

class TabButton extends StatelessWidget {
  const TabButton({
    required this.label,
    this.icon,
    this.page,
    required this.color,
    this.weight = FontWeight.bold,
  });

  final IconData? icon;
  final String label;
  final VoidCallback? page;
  final Color color;
  final FontWeight weight;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: page,
        child: Row(
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 0.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Container(
                  margin: EdgeInsets.fromLTRB(5.0, 7.0, 5.0, 7.0),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            label,
                            style: TextStyle(
                              fontWeight: weight,
                              fontSize: 15.0,
                              color: color,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 3, 0),
                        width: 50.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              icon,
                              size: 25.0,
                              color: kcardIconFaded,
                            ),
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
      ),
    );
  }
}
