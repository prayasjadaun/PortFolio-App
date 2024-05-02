import 'package:flutter/material.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Thank You!', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),),
            Text(
              'Successfully added the contacts !',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w300
              ),
            )
          ],
        ),
      ),
    );
  }
}