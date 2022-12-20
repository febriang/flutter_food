import 'package:flutter/material.dart';
import 'package:flutter_food/screen/home.dart';
import 'package:flutter_food/themes.dart';

class Success extends StatefulWidget {
  const Success({super.key});

  @override
  State<Success> createState() => _SuccessState();
}

class _SuccessState extends State<Success> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetImage('assets/success.gif'),
          height: 230,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: Text(
              'Pembayaranmu telah berhasil',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
                color: Color(0xFF808080),
              ),
            ),
          ),
          SizedBox(height: 15,),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 70),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: whiteColor, // background (button) color
                foregroundColor: yellowColor, // foreground (text) color
                elevation: 0
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Home()));
              },
              child: Text(
                'Kembali',
                style: poppinsTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}