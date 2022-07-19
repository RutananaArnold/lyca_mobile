import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundedInputField extends StatelessWidget {
  final String label;
  final IconData? mustIcon;
  final TextEditingController controller;
  final String hintText;
  const RoundedInputField(
      {Key? key,
      required this.label,
      this.mustIcon,
      required this.controller,
      required this.hintText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RichText(
                text: TextSpan(
                    text: label + "   ",
                    style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w800,
                        color: Colors.black),
                    children: [
                  WidgetSpan(
                      child: Icon(
                    mustIcon,
                    size: 12,
                    color: Colors.red,
                  ))
                ])),
          ),
          CupertinoTextField(
            controller: controller,
            placeholder: hintText,
          )
        ],
      ),
    );
  }
}
