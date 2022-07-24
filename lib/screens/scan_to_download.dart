import 'package:flutter/material.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

class ScanToDownload extends StatefulWidget {
  ScanToDownload({Key? key}) : super(key: key);

  @override
  State<ScanToDownload> createState() => _ScanToDownloadState();
}

class _ScanToDownloadState extends State<ScanToDownload> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: PrettyQr(
        image: const AssetImage('Assets/images/logo.png'),
        typeNumber: 3,
        size: 250,
        data: 'https://www.google.ru',
        errorCorrectLevel: QrErrorCorrectLevel.M,
        roundEdges: true,
      ),
    );
  }
}
