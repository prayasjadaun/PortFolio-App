import 'package:flutter/material.dart';
import 'package:pdfx/pdfx.dart';

class ResumePdf extends StatefulWidget {
  const ResumePdf({super.key});

  @override
  State<ResumePdf> createState() => _ResumePdfState();
}

class _ResumePdfState extends State<ResumePdf> {
  late PdfControllerPinch pdfControllerPinch;


  @override
  void initState() {
    super.initState();
    pdfControllerPinch = PdfControllerPinch(document: PdfDocument.openAsset('assets/pdf/Prayas.pdf'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Resume'),
        ),
        body: _buildUI()
    );
  }

  Widget _buildUI() {
    return Column(
      children: [
        _pdfView(),
      ],
    );
  }

  Widget _pdfView() {
    return Expanded(
        child: PdfViewPinch(
          controller: pdfControllerPinch,
        ));
  }
}
