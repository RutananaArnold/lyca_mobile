import 'package:flutter/material.dart';
import 'package:lyca_mobile/screens/index.dart';
import 'package:pinput/pinput.dart';
import '../widgets/rounded_button.dart';

class Verification extends StatefulWidget {
  Verification({Key? key}) : super(key: key);

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  late String tel;
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        toolbarHeight: 200,
        elevation: 0,
        centerTitle: true,
        title: const Icon(
          Icons.person,
          size: 80,
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(60),
              topRight: Radius.circular(60),
            )),
        child: Form(
            key: formKey,
            child: ListView(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: size.height * 0.11,
                      left: size.height * 0.07,
                      right: size.height * 0.07,
                      bottom: size.height * 0.05),
                  child: Center(
                      child: RichText(
                          text: const TextSpan(
                              text: "Phone Number Verification" + "\n",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700),
                              children: [
                        TextSpan(
                          text: "Enter the code sent to +256770438052",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        )
                      ]))),
                ),
                // textfield
                buildPinPut(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: RichText(
                      text: const TextSpan(
                          text: "Didn't Receive Code? ",
                          style: TextStyle(
                              fontWeight: FontWeight.w800,
                              color: Colors.black54),
                          children: [WidgetSpan(child: Text("Resend"))]),
                    ),
                  ),
                ),
                // buttons
                RoundedButton(
                  text: "NEXT",
                  press: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Index(),
                        ),
                        (route) => true);
                  },
                  color: Colors.blue,
                  icon: Icons.arrow_forward,
                ),
              ],
            )),
      ),
    );
  }

  Widget buildPinPut() {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(
          fontSize: 20,
          color: Color.fromRGBO(30, 60, 87, 1),
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromRGBO(234, 239, 243, 1)),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: const Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: const Color.fromRGBO(234, 239, 243, 1),
      ),
    );

    return Pinput(
      defaultPinTheme: defaultPinTheme,
      focusedPinTheme: focusedPinTheme,
      submittedPinTheme: submittedPinTheme,
      validator: (s) {
        return s == '2222' ? null : 'Pin is incorrect';
      },
      pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
      showCursor: true,
      onCompleted: (pin) => print(pin),
    );
  }
}
