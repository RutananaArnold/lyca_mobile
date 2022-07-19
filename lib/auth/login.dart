import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:lyca_mobile/AUTH/verification.dart';
import 'package:lyca_mobile/widgets/rounded_button.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late String tel;
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
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
                      top: size.height * 0.15,
                      left: size.height * 0.05,
                      right: size.height * 0.05,
                      bottom: size.height * 0.05),
                  child: const Center(
                    child: Text(
                      "An SMS Code will be sent to your phone to verify your phone number",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                // phonefield
                Container(
                  padding: EdgeInsets.only(
                      top: size.height * 0.01,
                      left: size.height * 0.05,
                      right: size.height * 0.05,
                      bottom: size.height * 0.01),
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(29),
                  ),
                  child: IntlPhoneField(
                    decoration: InputDecoration(
                      hintText: 'Mobile Number',
                      hintStyle:
                          const TextStyle(color: Colors.black, fontSize: 12),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black54),
                          borderRadius: BorderRadius.circular(15)),
                    ),
                    initialCountryCode: 'UG',
                    onChanged: (phone) {
                      tel = phone.completeNumber;
                    },
                  ),
                ),
                // buttons
                RoundedButton(
                  text: "NEXT",
                  press: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Verification(),
                        ),
                        (route) => true);
                  },
                  color: Colors.grey,
                  icon: Icons.arrow_forward,
                )
              ],
            )),
      ),
    );
  }
}
