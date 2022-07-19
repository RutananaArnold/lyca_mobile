import 'package:flutter/material.dart';

import '../constants.dart';
import '../widgets/tab_button.dart';
import '../widgets/tab_label.dart';

class HelpAndSupport extends StatefulWidget {
  const HelpAndSupport({Key? key}) : super(key: key);

  @override
  State<HelpAndSupport> createState() => _HelpAndSupportState();
}

class _HelpAndSupportState extends State<HelpAndSupport> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: size.height * 0.05),
          TabLabel(
            label: 'About Lyca',
            color: kappSecondary,
            align: Alignment.centerLeft,
          ),
          TabButton(
            label: 'FAQs',
            color: kappPrimary,
            icon: Icons.help_outline,
            weight: FontWeight.w400,
            page: () {},
          ),
          Column(
            children: [
              SizedBox(height: size.height * 0.05),
              TabLabel(
                  label: 'Contact Us',
                  color: kappSecondary,
                  align: Alignment.centerLeft),
              const SizedBox(height: 10.0),
              TabButton(
                  label: 'Call Help line',
                  color: kappPrimary,
                  icon: Icons.phone_forwarded_outlined,
                  weight: FontWeight.w400,
                  page: () => {}),
              const Divider(
                  indent: 20.0,
                  endIndent: 25.0,
                  color: kappPrimary,
                  height: 1.0),
              TabButton(
                  label: 'Report a problem',
                  color: kappPrimary,
                  icon: Icons.email_outlined,
                  weight: FontWeight.w400,
                  page: () {}),
              const Divider(
                indent: 20.0,
                endIndent: 25.0,
                color: kappPrimary,
                height: 1.0,
              ),
              TabButton(
                  label: 'Send Feedback',
                  color: kappPrimary,
                  icon: Icons.feedback_outlined,
                  weight: FontWeight.w400,
                  page: () {}),
              const Divider(
                indent: 20.0,
                endIndent: 25.0,
                color: kappPrimary,
                height: 1.0,
              ),
            ],
          ),
          SizedBox(height: size.height * 0.05),
          TabLabel(
            label: 'App Info',
            color: kappSecondary,
            align: Alignment.centerLeft,
          ),
          const SizedBox(height: 10.0),
          const TabButton(
            label: 'App Version',
            color: kappPrimary,
            weight: FontWeight.w400,
          ),
        ],
      ),
    );
  }
}
