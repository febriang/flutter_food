import 'package:flutter/material.dart';
import 'package:flutter_food/success/success.dart';
import 'package:flutter_food/themes.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Payment extends StatefulWidget {
  Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  int value = 0;

  final paymentMethod = [
    'Credit Card / Debit Card',
    'Cash On Delivery',
    'Gopay',
    'Dana',
    'Shoopepay',
  ];

  final paymentIcons = [
    'assets/credit.png',
    'assets/cod.png',
    'assets/gopay.png',
    'assets/dana.png',
    'assets/spay.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('PAYMENT'),
        backgroundColor: yellowColor,
        elevation: 0.0,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              'Pilih Metode Pembayaranmu',
              style: poppinsTextStyle.copyWith(
                fontSize: 28,
                fontWeight: FontWeight.bold, color: Colors.grey
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.separated(
              itemCount: paymentMethod.length,
              itemBuilder: (context, index) {
                return ListTile(
                    leading: Radio(
                        activeColor: yellowColor,
                        value: index,
                        groupValue: value,
                        onChanged: (i) => setState(() => value = index)),
                    title: Text(
                      paymentMethod[index], 
                      style: 
                        poppinsTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: blackColor,
                        ),
                    ),
                    trailing: Image.asset(
                      paymentIcons[index],
                      width: 35,
                      height: 35,
                    ));
              },
              separatorBuilder: ((context, index) {
                return Divider();
              }),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: yellowColor, // background (button) color
                foregroundColor: whiteColor, // foreground (text) color
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Success()));
              },
              child: Text(
                'Bayar',
                style: poppinsTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(vertical: 10),
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: whiteColor, // background (button) color
                foregroundColor: Colors.red, // foreground (text) color
                side: BorderSide(color: Colors.red, width: 0.5)
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                'Batal',
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
