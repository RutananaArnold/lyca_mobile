import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final void Function() press;
  final Color color, textColor;
  final IconData? icon;
  const RoundedButton(
      {Key? key,
      required this.text,
      required this.press,
      required this.color,
      this.textColor = Colors.white,
      this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(
          top: size.height * 0.01,
          left: size.height * 0.05,
          right: size.height * 0.05,
          bottom: size.height * 0.01),
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.85,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: roundButton(),
      ),
    );
  }

  Widget roundButton() {
    return ElevatedButton(
      child: Center(
        child: RichText(
          text: TextSpan(
              text: text,
              style: TextStyle(fontSize: 12, color: textColor),
              children: [
                const WidgetSpan(
                    child: SizedBox(
                  width: 50,
                )),
                WidgetSpan(
                    child: Icon(
                  icon,
                  size: 15,
                ))
              ]),
        ),
      ),
      onPressed: press,
      style: ElevatedButton.styleFrom(
        primary: color,
        padding: const EdgeInsets.symmetric(
          horizontal: 40,
          vertical: 20,
        ),
        textStyle: TextStyle(
          color: textColor,
          fontSize: 13,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
