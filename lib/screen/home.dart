import 'package:flutter/material.dart';
import 'package:flutter_food/card_paket/paket_satu.dart';
import 'package:flutter_food/card_paket/paket_dua.dart';
import 'package:flutter_food/card_paket/paket_tiga.dart';
import 'package:flutter_food/models/menu.dart';
import 'package:flutter_food/themes.dart';
import 'package:flutter_food/widgets/menu_card.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: <Widget>[
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 32,
              horizontal: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello Customers',
                  style: poppinsTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: blackColor,
                  ),
                ),
                Text(
                  'Selamat Datang di BurgerKita',
                  style: poppinsTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: greyColor,
                  ),
                ),
                const SizedBox(height: 22),
                Container(
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: yellowColor,
                  ),
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 27.5),
                    child: Text(
                      'Recommended Menu',
                      style: poppinsTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: whiteColor,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 22),
                MenuCard(
                  Menu(
                    id: 1,
                    image: 'assets/pic1.png',
                    name: 'Burger Regular',
                    price: 28000,
                    pricePromo: 22000,
                    note:
                        'Pembelian diatas 5  item bonus satu burger promo berlaku hanya pengiriman radius 2 KM setiap pembelian mendapat 1 kupon burger 10 kupon burger bisa ditukar dengan 1 burger',
                    isPromo: true,
                  ),
                ),
                const SizedBox(height: 20),
                MenuCardPaket1(
                  Menu(
                    id: 2,
                    image: 'assets/pic2.png',
                    name: 'Burger Paket 1',
                    price: 35000,
                    pricePromo: 30000,
                    note:
                        'Pembelian diatas 5  item bonus satu burger promo berlaku hanya pengiriman radius 2 KM setiap pembelian mendapat 1 kupon burger 10 kupon burger bisa ditukar dengan 1 burger',
                    isPromo: false,
                  ),
                ),
                const SizedBox(height: 20),
                MenuCardPaket2(
                  Menu(
                    id: 3,
                    image: 'assets/pic3.png',
                    name: 'Burger Paket 2',
                    price: 32000,
                    pricePromo: 28000,
                    note:
                        'Pembelian diatas 5  item bonus satu burger promo berlaku hanya pengiriman radius 2 KM setiap pembelian mendapat 1 kupon burger 10 kupon burger bisa ditukar dengan 1 burger',
                    isPromo: false,
                  ),
                ),
                const SizedBox(height: 20),
                MenuCardPaket3(
                  Menu(
                    id: 4,
                    image: 'assets/pic4.png',
                    name: 'Burger Paket 3',
                    price: 30000,
                    pricePromo: 26000,
                    note:
                        'Pembelian diatas 5  item bonus satu burger promo berlaku hanya pengiriman radius 2 KM setiap pembelian mendapat 1 kupon burger 10 kupon burger bisa ditukar dengan 1 burger',
                    isPromo: false,
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
